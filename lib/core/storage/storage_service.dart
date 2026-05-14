import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import '../../domain/entities/server.dart';

import 'icloud_key_value_bridge.dart';
import 'webdav_sync_client.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage_service.g.dart';

/// 同步提供 [StorageService] 的实例。
///
/// 必须在 main.dart 中完成初始化并通过 `ProviderScope.overrides` 覆盖此 Provider，
/// 否则任何读取都会抛出 [UnimplementedError]。
@Riverpod(keepAlive: true)
StorageService storageService(Ref ref) {
  throw UnimplementedError('storageServiceProvider 必须在 main.dart 中 override');
}

class StorageService {
  StorageService({ICloudKeyValueBridge? iCloudKeyValueBridge})
    : _iCloudKeyValueBridge = iCloudKeyValueBridge ?? ICloudKeyValueBridge();

  late final SharedPreferences _prefs;
  late final File _serversFile;
  final ICloudKeyValueBridge _iCloudKeyValueBridge;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  final FlutterSecureStorage _syncSecureStorage = const FlutterSecureStorage(
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock,
      synchronizable: true,
    ),
    mOptions: MacOsOptions(
      accessibility: KeychainAccessibility.first_unlock,
      synchronizable: true,
    ),
  );
  final StreamController<void> _serversChangedController =
      StreamController<void>.broadcast();
  final StreamController<void> _syncStatusController =
      StreamController<void>.broadcast();
  StreamSubscription<String>? _iCloudChangesSubscription;
  Future<void>? _cloudSyncInFlight;
  Future<void>? _webDavSyncInFlight;
  static const _legacyAllowInsecureConnectionsKey =
      'allow_insecure_connections';
  static const _serversFileName = 'servers.json';
  static const _serverSyncEnabledKey = 'server_sync_enabled';
  static const _serverSyncLastAttemptedAtKey = 'server_sync_last_attempted_at';
  static const _serverSyncLastSucceededAtKey = 'server_sync_last_succeeded_at';
  static const _serverSyncLastErrorKey = 'server_sync_last_error';
  static const _serverSyncPayloadKey = 'mono_dash_server_sync_payload_v1';
  static const _serverSyncTombstonesKey = 'server_sync_tombstones_v1';
  static const _webDavSyncEnabledKey = 'webdav_sync_enabled';
  static const _webDavSyncUrlKey = 'webdav_sync_url';
  static const _webDavSyncUsernameKey = 'webdav_sync_username';
  static const _webDavSyncPasswordKey = 'webdav_sync_password';
  static const _webDavSyncApiKeysKey = 'webdav_sync_api_keys';
  static const _webDavSyncLastAttemptedAtKey = 'webdav_sync_last_attempted_at';
  static const _webDavSyncLastSucceededAtKey = 'webdav_sync_last_succeeded_at';
  static const _webDavSyncLastErrorKey = 'webdav_sync_last_error';
  static const _uuid = Uuid();
  static const _tombstoneRetention = Duration(days: 90);

  Stream<void> get serversChanged => _serversChangedController.stream;

  Stream<void> get syncStatusChanged => _syncStatusController.stream;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    final dir = await getApplicationDocumentsDirectory();
    _serversFile = File('${dir.path}/$_serversFileName');
    await _migrateLegacyAllowInsecureConnections();
    await _normalizeStoredServers();
    _iCloudChangesSubscription = _iCloudKeyValueBridge.remoteChanges.listen((
      key,
    ) {
      if (key == _serverSyncPayloadKey) {
        unawaited(syncServersFromCloud());
      }
    });
  }

  Future<void> dispose() async {
    await _iCloudChangesSubscription?.cancel();
    await _serversChangedController.close();
    await _syncStatusController.close();
  }

  Future<void> _migrateLegacyAllowInsecureConnections() async {
    final legacyValue = _prefs.getBool(_legacyAllowInsecureConnectionsKey);
    if (legacyValue != true) return;

    final servers = await _readServers();
    for (final server in servers) {
      server.allowInsecureConnections = true;
      _touchServerSyncMetadata(server);
    }
    await _writeServers(servers, syncToCloud: false);
    await _prefs.remove(_legacyAllowInsecureConnectionsKey);
  }

  Future<void> _normalizeStoredServers({
    bool migrateApiKeysToSyncKeychain = false,
  }) async {
    final servers = await _readServers();
    var changed = false;
    for (final server in servers) {
      changed = _ensureServerSyncMetadata(server) || changed;
      if (migrateApiKeysToSyncKeychain && isServerSyncEnabled) {
        await _migrateLegacyApiKeyToSyncKeychain(server);
      }
    }
    if (changed) {
      await _writeServers(servers, syncToCloud: false, notify: false);
    }
  }

  // --- UI State (Shared Preferences) ---

  String? getString(String key) => _prefs.getString(key);

  Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }

  // --- Secure State (Keychain / Keystore) ---

  Future<String?> getSecureString(String key) async {
    return _secureStorage.read(key: key);
  }

  Future<void> setSecureString(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  Future<void> removeSecureString(String key) async {
    await _secureStorage.delete(key: key);
  }

  // --- Servers (JSON) ---

  Future<List<Server>> getServers() async {
    final servers = await _readServers();
    servers.sort((a, b) => a.sortIndex.compareTo(b.sortIndex));
    return servers;
  }

  Future<Server?> getServer(int id) async {
    final servers = await _readServers();
    for (final server in servers) {
      if (server.id == id) return server;
    }
    return null;
  }

  Future<void> saveServer(Server server) async {
    final servers = await _readServers();
    if (server.id <= 0) {
      server.id = _nextServerId(servers);
    }
    _touchServerSyncMetadata(server);

    final index = servers.indexWhere((item) => item.id == server.id);
    if (index == -1) {
      servers.add(server);
    } else {
      servers[index] = server;
    }
    await _writeServers(servers);
  }

  Future<void> deleteServer(int id) async {
    final servers = await _readServers();
    Server? removedServer;
    for (final server in servers) {
      if (server.id == id) {
        removedServer = server;
        break;
      }
    }
    final nextServers = servers.where((server) => server.id != id).toList();
    if (nextServers.length == servers.length) return;

    if (removedServer != null) {
      _ensureServerSyncMetadata(removedServer);
      await _recordServerTombstone(removedServer.syncId);
    }
    await _writeServers(nextServers);
    if (removedServer != null) {
      await _deleteApiKeyForServer(removedServer);
    } else {
      await deleteApiKey(id);
    }
  }

  bool get isServerSyncEnabled =>
      _prefs.getBool(_serverSyncEnabledKey) ?? false;

  bool get isWebDavSyncEnabled =>
      _prefs.getBool(_webDavSyncEnabledKey) ?? false;

  Future<ServerSyncStatus> getServerSyncStatus() async {
    final enabled = isServerSyncEnabled;
    return ServerSyncStatus(
      enabled: enabled,
      iCloudAvailable: enabled
          ? (await _tryCloudOperation(_iCloudKeyValueBridge.isAvailable) ??
                false)
          : false,
      lastAttemptedAt: _dateTimeFromPrefs(_serverSyncLastAttemptedAtKey),
      lastSucceededAt: _dateTimeFromPrefs(_serverSyncLastSucceededAtKey),
      lastError: _prefs.getString(_serverSyncLastErrorKey),
    );
  }

  Future<WebDavSyncStatus> getWebDavSyncStatus() async {
    final config = await getWebDavSyncConfig();
    return WebDavSyncStatus(
      enabled: config.enabled,
      configured: config.isConfigured,
      url: config.url,
      lastAttemptedAt: _dateTimeFromPrefs(_webDavSyncLastAttemptedAtKey),
      lastSucceededAt: _dateTimeFromPrefs(_webDavSyncLastSucceededAtKey),
      lastError: _prefs.getString(_webDavSyncLastErrorKey),
    );
  }

  Future<void> setServerSyncEnabled(bool enabled) async {
    await _prefs.setBool(_serverSyncEnabledKey, enabled);
    _syncStatusController.add(null);
    if (!enabled) return;

    await _tryCloudOperation(_iCloudKeyValueBridge.start);
    await _normalizeStoredServers(migrateApiKeysToSyncKeychain: true);
    await syncServersFromCloud(force: true);
  }

  Future<WebDavSyncConfig> getWebDavSyncConfig() async {
    return WebDavSyncConfig(
      enabled: isWebDavSyncEnabled,
      url: _prefs.getString(_webDavSyncUrlKey) ?? '',
      username: _prefs.getString(_webDavSyncUsernameKey) ?? '',
      password: await _secureStorage.read(key: _webDavSyncPasswordKey) ?? '',
      syncApiKeys: _prefs.getBool(_webDavSyncApiKeysKey) ?? false,
    );
  }

  Future<void> saveWebDavSyncConfig({
    required String url,
    required String username,
    required String password,
    required bool syncApiKeys,
  }) async {
    await _prefs.setString(_webDavSyncUrlKey, url.trim());
    await _prefs.setString(_webDavSyncUsernameKey, username.trim());
    await _prefs.setBool(_webDavSyncApiKeysKey, syncApiKeys);
    if (password.isEmpty) {
      await _secureStorage.delete(key: _webDavSyncPasswordKey);
    } else {
      await _secureStorage.write(key: _webDavSyncPasswordKey, value: password);
    }
    _syncStatusController.add(null);
  }

  Future<void> setWebDavSyncEnabled(bool enabled) async {
    await _prefs.setBool(_webDavSyncEnabledKey, enabled);
    _syncStatusController.add(null);
    if (!enabled) return;

    await syncServersFromWebDav(force: true);
  }

  Future<void> syncServersFromCloud({bool force = false}) {
    if (!force && !isServerSyncEnabled) return Future.value();
    final inFlight = _cloudSyncInFlight;
    if (inFlight != null) return inFlight;

    late final Future<void> syncFuture;
    syncFuture = _syncServersFromCloud().whenComplete(() {
      if (identical(_cloudSyncInFlight, syncFuture)) {
        _cloudSyncInFlight = null;
      }
    });
    _cloudSyncInFlight = syncFuture;
    return _cloudSyncInFlight!;
  }

  Future<void> syncServersFromWebDav({bool force = false}) {
    if (!force && !isWebDavSyncEnabled) return Future.value();
    final inFlight = _webDavSyncInFlight;
    if (inFlight != null) return inFlight;

    late final Future<void> syncFuture;
    syncFuture = _syncServersFromWebDav().whenComplete(() {
      if (identical(_webDavSyncInFlight, syncFuture)) {
        _webDavSyncInFlight = null;
      }
    });
    _webDavSyncInFlight = syncFuture;
    return _webDavSyncInFlight!;
  }

  Future<void> _syncServersFromCloud() async {
    if (!isServerSyncEnabled) return;
    await _tryCloudOperation(_iCloudKeyValueBridge.start);
    await _normalizeStoredServers(migrateApiKeysToSyncKeychain: true);
    await _markSyncAttempt();

    final isAvailable = await _tryCloudOperation(
      _iCloudKeyValueBridge.isAvailable,
    );
    if (isAvailable != true) {
      await _markSyncFailure('icloud_unavailable');
      return;
    }

    final remotePayloadString = await _tryCloudOperation(
      () => _iCloudKeyValueBridge.getString(_serverSyncPayloadKey),
    );
    final remotePayload = _ServerSyncPayload.tryDecode(remotePayloadString);
    if (remotePayload == null) {
      await _pushServerSyncSnapshot();
      await _markSyncSuccess();
      return;
    }

    final localServers = await _readServers();
    final localTombstones = _readServerTombstones();
    final mergeResult = _mergeServerSyncPayload(
      localServers: localServers,
      localTombstones: localTombstones,
      remotePayload: remotePayload,
    );

    if (mergeResult.changedLocalServers) {
      await _writeServers(
        mergeResult.servers,
        syncToCloud: false,
        notify: true,
      );
      for (final id in mergeResult.removedLocalServerIds) {
        final removedServer = _serverById(localServers, id);
        if (removedServer != null) {
          await _deleteApiKeyForServer(removedServer);
        } else {
          await deleteApiKey(id);
        }
      }
    }
    if (mergeResult.changedLocalTombstones) {
      await _writeServerTombstones(mergeResult.tombstones);
    }
    final nextPayload = await _buildServerSyncPayload();
    if (nextPayload.canonicalJson != remotePayload.canonicalJson) {
      await _tryCloudOperation(
        () => _iCloudKeyValueBridge.setString(
          _serverSyncPayloadKey,
          nextPayload.canonicalJson,
        ),
      );
    }
    await _markSyncSuccess();
  }

  Future<void> _syncServersFromWebDav() async {
    if (!isWebDavSyncEnabled) return;
    await _markWebDavSyncAttempt();

    final config = await getWebDavSyncConfig();
    if (!config.isConfigured) {
      await _markWebDavSyncFailure('webdav_unconfigured');
      return;
    }

    try {
      final client = WebDavSyncClient(
        url: config.url,
        username: config.username,
        password: config.password,
      );

      final remotePayloadString = await client.readPayload();
      final remotePayload = _ServerSyncPayload.tryDecode(remotePayloadString);
      if (remotePayload == null) {
        final localPayload = await _buildServerSyncPayload(
          includeApiKeys: config.syncApiKeys,
        );
        await client.writePayload(localPayload.canonicalJson);
        await _markWebDavSyncSuccess();
        return;
      }

      final localServers = await _readServers();
      final localTombstones = _readServerTombstones();
      final mergeResult = _mergeServerSyncPayload(
        localServers: localServers,
        localTombstones: localTombstones,
        remotePayload: remotePayload,
      );

      if (mergeResult.changedLocalServers) {
        await _writeServers(
          mergeResult.servers,
          syncToCloud: false,
          notify: true,
        );
        for (final id in mergeResult.removedLocalServerIds) {
          final removedServer = _serverById(localServers, id);
          if (removedServer != null) {
            await _deleteApiKeyForServer(removedServer);
          } else {
            await deleteApiKey(id);
          }
        }
      }
      if (mergeResult.changedLocalTombstones) {
        await _writeServerTombstones(mergeResult.tombstones);
      }
      if (config.syncApiKeys) {
        await _applyApiKeysFromPayload(remotePayload, mergeResult.servers);
      }

      final nextPayload = await _buildServerSyncPayload(
        includeApiKeys: config.syncApiKeys,
      );
      if (nextPayload.canonicalJson != remotePayload.canonicalJson) {
        await client.writePayload(nextPayload.canonicalJson);
      }
      await _markWebDavSyncSuccess();
    } catch (error) {
      await _markWebDavSyncFailure(_webDavSyncErrorCode(error));
    }
  }

  Future<List<Server>> _readServers() async {
    if (!await _serversFile.exists()) return [];

    final content = await _serversFile.readAsString();
    if (content.trim().isEmpty) return [];

    final json = jsonDecode(content);
    if (json is! List) return [];

    return json
        .whereType<Map>()
        .map((item) => Server.fromJson(Map<String, Object?>.from(item)))
        .toList();
  }

  Future<void> _writeServers(
    List<Server> servers, {
    bool syncToCloud = true,
    bool notify = false,
  }) async {
    if (!await _serversFile.parent.exists()) {
      await _serversFile.parent.create(recursive: true);
    }

    final content = const JsonEncoder.withIndent(
      '  ',
    ).convert(servers.map((server) => server.toJson()).toList());

    final tmpFile = File('${_serversFile.path}.tmp');
    await tmpFile.writeAsString('$content\n', flush: true);
    await tmpFile.rename(_serversFile.path);
    if (notify) {
      _serversChangedController.add(null);
    }
    if (syncToCloud) {
      await _pushServerSyncSnapshot();
    }
  }

  int _nextServerId(List<Server> servers) {
    var maxId = 0;
    for (final server in servers) {
      if (server.id > maxId) maxId = server.id;
    }
    return maxId + 1;
  }

  // --- API Keys (Secure Storage) ---

  String _apiKeyKey(int id) => 'api_key_$id';

  String _syncApiKeyKey(String syncId) => 'api_key_sync_$syncId';

  Future<void> saveApiKey(int id, String apiKey) async {
    await _secureStorage.write(key: _apiKeyKey(id), value: apiKey);
    if (!isServerSyncEnabled) return;
    final server = await getServer(id);
    if (server == null) return;

    _ensureServerSyncMetadata(server);
    await _trySecureOperation(
      () => _syncSecureStorage.write(
        key: _syncApiKeyKey(server.syncId),
        value: apiKey,
      ),
    );
  }

  Future<String?> getApiKey(int id) async {
    final server = await getServer(id);
    if (server != null && isServerSyncEnabled) {
      _ensureServerSyncMetadata(server);
      final syncApiKey = await _trySecureOperation(
        () => _syncSecureStorage.read(key: _syncApiKeyKey(server.syncId)),
      );
      if (syncApiKey != null && syncApiKey.isNotEmpty) {
        return syncApiKey;
      }
    }

    final legacyApiKey = await _secureStorage.read(key: _apiKeyKey(id));
    if (isServerSyncEnabled &&
        server != null &&
        legacyApiKey != null &&
        legacyApiKey.isNotEmpty) {
      await _trySecureOperation(
        () => _syncSecureStorage.write(
          key: _syncApiKeyKey(server.syncId),
          value: legacyApiKey,
        ),
      );
    }
    return legacyApiKey;
  }

  Future<void> deleteApiKey(int id) async {
    final server = await getServer(id);
    if (server != null) {
      await _deleteApiKeyForServer(server);
      return;
    }
    await _secureStorage.delete(key: _apiKeyKey(id));
  }

  Future<void> _deleteApiKeyForServer(Server server) async {
    _ensureServerSyncMetadata(server);
    if (isServerSyncEnabled) {
      await _trySecureOperation(
        () => _syncSecureStorage.delete(key: _syncApiKeyKey(server.syncId)),
      );
    }
    await _secureStorage.delete(key: _apiKeyKey(server.id));
  }

  Future<void> _migrateLegacyApiKeyToSyncKeychain(Server server) async {
    if (server.id <= 0 || server.syncId.isEmpty) return;
    final syncApiKey = await _trySecureOperation(
      () => _syncSecureStorage.read(key: _syncApiKeyKey(server.syncId)),
    );
    if (syncApiKey != null && syncApiKey.isNotEmpty) return;

    final legacyApiKey = await _secureStorage.read(key: _apiKeyKey(server.id));
    if (legacyApiKey == null || legacyApiKey.isEmpty) return;

    await _trySecureOperation(
      () => _syncSecureStorage.write(
        key: _syncApiKeyKey(server.syncId),
        value: legacyApiKey,
      ),
    );
  }

  bool _ensureServerSyncMetadata(Server server) {
    var changed = false;
    if (server.syncId.trim().isEmpty) {
      server.syncId = _uuid.v4();
      changed = true;
    }
    if (server.createdAt == null) {
      server.createdAt = DateTime.now().toUtc();
      changed = true;
    }
    if (server.updatedAt == null) {
      server.updatedAt = server.createdAt ?? DateTime.now().toUtc();
      changed = true;
    }
    return changed;
  }

  void _touchServerSyncMetadata(Server server) {
    _ensureServerSyncMetadata(server);
    server.updatedAt = DateTime.now().toUtc();
  }

  Future<void> _recordServerTombstone(String syncId) async {
    if (syncId.isEmpty) return;
    final tombstones = _readServerTombstones();
    tombstones[syncId] = DateTime.now().toUtc();
    await _writeServerTombstones(tombstones);
  }

  Map<String, DateTime> _readServerTombstones() {
    final content = _prefs.getString(_serverSyncTombstonesKey);
    if (content == null || content.trim().isEmpty) return {};

    final decoded = jsonDecode(content);
    if (decoded is! Map) return {};

    final tombstones = <String, DateTime>{};
    for (final entry in decoded.entries) {
      final deletedAt = entry.value is String
          ? DateTime.tryParse(entry.value as String)
          : null;
      if (deletedAt != null) {
        tombstones[entry.key.toString()] = deletedAt;
      }
    }
    return tombstones;
  }

  Future<void> _writeServerTombstones(Map<String, DateTime> tombstones) async {
    final pruned = _pruneTombstones(tombstones);
    final content = jsonEncode(
      pruned.map((key, value) => MapEntry(key, value.toIso8601String())),
    );
    await _prefs.setString(_serverSyncTombstonesKey, content);
  }

  Map<String, DateTime> _pruneTombstones(Map<String, DateTime> tombstones) {
    final cutoff = DateTime.now().toUtc().subtract(_tombstoneRetention);
    return {
      for (final entry in tombstones.entries)
        if (entry.value.isAfter(cutoff)) entry.key: entry.value,
    };
  }

  Future<void> _pushServerSyncSnapshot() async {
    if (!isServerSyncEnabled && !isWebDavSyncEnabled) return;

    final payload = await _buildServerSyncPayload();
    if (isServerSyncEnabled) {
      final isAvailable = await _tryCloudOperation(
        _iCloudKeyValueBridge.isAvailable,
      );
      if (isAvailable == true) {
        await _tryCloudOperation(
          () => _iCloudKeyValueBridge.setString(
            _serverSyncPayloadKey,
            payload.canonicalJson,
          ),
        );
      }
    }
    if (isWebDavSyncEnabled) {
      final config = await getWebDavSyncConfig();
      if (config.isConfigured) {
        final client = WebDavSyncClient(
          url: config.url,
          username: config.username,
          password: config.password,
        );
        final webDavPayload = config.syncApiKeys
            ? await _buildServerSyncPayload(includeApiKeys: true)
            : payload;
        try {
          await client.writePayload(webDavPayload.canonicalJson);
        } catch (error) {
          await _markWebDavSyncFailure(_webDavSyncErrorCode(error));
        }
      }
    }
  }

  Future<_ServerSyncPayload> _buildServerSyncPayload({
    bool includeApiKeys = false,
  }) async {
    final servers = await _readServers();
    for (final server in servers) {
      _ensureServerSyncMetadata(server);
    }
    servers.sort((a, b) => a.sortIndex.compareTo(b.sortIndex));
    final tombstones = _pruneTombstones(_readServerTombstones());
    final apiKeys = <String, String>{};
    if (includeApiKeys) {
      for (final server in servers) {
        final apiKey = await getApiKey(server.id);
        if (apiKey != null && apiKey.isNotEmpty) {
          apiKeys[server.syncId] = apiKey;
        }
      }
    }
    return _ServerSyncPayload(
      updatedAt: _payloadUpdatedAt(servers, tombstones),
      servers: servers,
      tombstones: tombstones,
      apiKeys: apiKeys,
    );
  }

  Future<void> _applyApiKeysFromPayload(
    _ServerSyncPayload payload,
    List<Server> servers,
  ) async {
    if (payload.apiKeys.isEmpty) return;
    final serversBySyncId = {
      for (final server in servers) server.syncId: server,
    };
    for (final entry in payload.apiKeys.entries) {
      final server = serversBySyncId[entry.key];
      final apiKey = entry.value;
      if (server == null || apiKey.isEmpty) continue;
      await _secureStorage.write(key: _apiKeyKey(server.id), value: apiKey);
      if (isServerSyncEnabled) {
        await _trySecureOperation(
          () => _syncSecureStorage.write(
            key: _syncApiKeyKey(server.syncId),
            value: apiKey,
          ),
        );
      }
    }
  }

  _ServerSyncMergeResult _mergeServerSyncPayload({
    required List<Server> localServers,
    required Map<String, DateTime> localTombstones,
    required _ServerSyncPayload remotePayload,
  }) {
    for (final server in localServers) {
      _ensureServerSyncMetadata(server);
    }
    for (final server in remotePayload.servers) {
      _ensureServerSyncMetadata(server);
    }

    final tombstones = _pruneTombstones({
      ...localTombstones,
      for (final entry in remotePayload.tombstones.entries)
        entry.key: _laterDate(localTombstones[entry.key], entry.value),
    });
    final existingLocalBySyncId = {
      for (final server in localServers) server.syncId: server,
    };
    final mergedBySyncId = <String, Server>{};
    final removedLocalServerIds = <int>[];

    void consider(Server server, {required bool isLocal}) {
      final deletedAt = tombstones[server.syncId];
      if (deletedAt != null && !server.updatedAt!.isAfter(deletedAt)) {
        if (isLocal) removedLocalServerIds.add(server.id);
        return;
      }

      final current = mergedBySyncId[server.syncId];
      if (current == null || server.updatedAt!.isAfter(current.updatedAt!)) {
        mergedBySyncId[server.syncId] = _copyServer(server);
      }
    }

    for (final server in localServers) {
      consider(server, isLocal: true);
    }
    for (final server in remotePayload.servers) {
      consider(server, isLocal: false);
    }

    var nextId = _nextServerId(localServers);
    final mergedServers = mergedBySyncId.values.toList()
      ..sort((a, b) {
        final sortCompare = a.sortIndex.compareTo(b.sortIndex);
        if (sortCompare != 0) return sortCompare;
        return (a.createdAt ?? DateTime.fromMillisecondsSinceEpoch(0))
            .compareTo(b.createdAt ?? DateTime.fromMillisecondsSinceEpoch(0));
      });
    for (var i = 0; i < mergedServers.length; i++) {
      final server = mergedServers[i];
      final existingLocal = existingLocalBySyncId[server.syncId];
      if (existingLocal != null) {
        server.id = existingLocal.id;
      } else {
        server.id = nextId++;
      }
      server.sortIndex = i;
    }

    final localPayload = _ServerSyncPayload(
      updatedAt: DateTime.fromMillisecondsSinceEpoch(0, isUtc: true),
      servers: localServers,
      tombstones: _pruneTombstones(localTombstones),
      apiKeys: const {},
    );
    final mergedPayload = _ServerSyncPayload(
      updatedAt: DateTime.fromMillisecondsSinceEpoch(0, isUtc: true),
      servers: mergedServers,
      tombstones: tombstones,
      apiKeys: const {},
    );

    return _ServerSyncMergeResult(
      servers: mergedServers,
      tombstones: tombstones,
      removedLocalServerIds: removedLocalServerIds,
      changedLocalServers:
          localPayload.serversJson != mergedPayload.serversJson,
      changedLocalTombstones:
          localPayload.tombstonesJson != mergedPayload.tombstonesJson,
    );
  }

  Server _copyServer(Server server) {
    return Server.fromJson(server.toJson());
  }

  Server? _serverById(List<Server> servers, int id) {
    for (final server in servers) {
      if (server.id == id) return server;
    }
    return null;
  }

  DateTime _laterDate(DateTime? first, DateTime second) {
    if (first == null) return second;
    return first.isAfter(second) ? first : second;
  }

  DateTime _payloadUpdatedAt(
    List<Server> servers,
    Map<String, DateTime> tombstones,
  ) {
    var updatedAt = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);
    for (final server in servers) {
      final serverUpdatedAt = server.updatedAt;
      if (serverUpdatedAt != null && serverUpdatedAt.isAfter(updatedAt)) {
        updatedAt = serverUpdatedAt;
      }
    }
    for (final tombstoneUpdatedAt in tombstones.values) {
      if (tombstoneUpdatedAt.isAfter(updatedAt)) {
        updatedAt = tombstoneUpdatedAt;
      }
    }
    return updatedAt;
  }

  DateTime? _dateTimeFromPrefs(String key) {
    final raw = _prefs.getString(key);
    if (raw == null || raw.isEmpty) return null;
    return DateTime.tryParse(raw);
  }

  Future<void> _markSyncAttempt() async {
    await _prefs.setString(
      _serverSyncLastAttemptedAtKey,
      DateTime.now().toUtc().toIso8601String(),
    );
    _syncStatusController.add(null);
  }

  Future<void> _markSyncSuccess() async {
    await _prefs.setString(
      _serverSyncLastSucceededAtKey,
      DateTime.now().toUtc().toIso8601String(),
    );
    await _prefs.remove(_serverSyncLastErrorKey);
    _syncStatusController.add(null);
  }

  Future<void> _markSyncFailure(String error) async {
    await _prefs.setString(_serverSyncLastErrorKey, error);
    _syncStatusController.add(null);
  }

  Future<void> _markWebDavSyncAttempt() async {
    await _prefs.setString(
      _webDavSyncLastAttemptedAtKey,
      DateTime.now().toUtc().toIso8601String(),
    );
    _syncStatusController.add(null);
  }

  Future<void> _markWebDavSyncSuccess() async {
    await _prefs.setString(
      _webDavSyncLastSucceededAtKey,
      DateTime.now().toUtc().toIso8601String(),
    );
    await _prefs.remove(_webDavSyncLastErrorKey);
    _syncStatusController.add(null);
  }

  Future<void> _markWebDavSyncFailure(String error) async {
    await _prefs.setString(_webDavSyncLastErrorKey, error);
    _syncStatusController.add(null);
  }

  String _syncErrorMessage(Object error) {
    final message = error.toString().trim();
    if (message.isEmpty) return 'unknown_error';
    return message;
  }

  String _webDavSyncErrorCode(Object error) {
    if (error is FormatException) return 'webdav_invalid_url';
    if (error is WebDavSyncException) {
      final operation = switch (error.operation) {
        WebDavSyncOperation.read => 'read',
        WebDavSyncOperation.write => 'write',
        WebDavSyncOperation.createDirectory => 'mkcol',
      };
      return 'webdav_${operation}_http_${error.statusCode ?? 'unknown'}';
    }
    return _syncErrorMessage(error);
  }

  Future<T?> _tryCloudOperation<T>(Future<T> Function() operation) async {
    try {
      return await operation();
    } catch (_) {
      return null;
    }
  }

  Future<T?> _trySecureOperation<T>(Future<T> Function() operation) async {
    try {
      return await operation();
    } catch (_) {
      return null;
    }
  }
}

class ServerSyncStatus {
  const ServerSyncStatus({
    required this.enabled,
    required this.iCloudAvailable,
    required this.lastAttemptedAt,
    required this.lastSucceededAt,
    required this.lastError,
  });

  final bool enabled;
  final bool iCloudAvailable;
  final DateTime? lastAttemptedAt;
  final DateTime? lastSucceededAt;
  final String? lastError;
}

class WebDavSyncStatus {
  const WebDavSyncStatus({
    required this.enabled,
    required this.configured,
    required this.url,
    required this.lastAttemptedAt,
    required this.lastSucceededAt,
    required this.lastError,
  });

  final bool enabled;
  final bool configured;
  final String url;
  final DateTime? lastAttemptedAt;
  final DateTime? lastSucceededAt;
  final String? lastError;
}

final serverSyncStatusProvider = FutureProvider<ServerSyncStatus>((ref) async {
  final storage = ref.watch(storageServiceProvider);
  final subscription = storage.syncStatusChanged.listen((_) {
    ref.invalidateSelf();
  });
  ref.onDispose(subscription.cancel);
  return storage.getServerSyncStatus();
});

final webDavSyncStatusProvider = FutureProvider<WebDavSyncStatus>((ref) async {
  final storage = ref.watch(storageServiceProvider);
  final subscription = storage.syncStatusChanged.listen((_) {
    ref.invalidateSelf();
  });
  ref.onDispose(subscription.cancel);
  return storage.getWebDavSyncStatus();
});

class _ServerSyncPayload {
  _ServerSyncPayload({
    required this.updatedAt,
    required this.servers,
    required this.tombstones,
    required this.apiKeys,
  });

  final DateTime updatedAt;
  final List<Server> servers;
  final Map<String, DateTime> tombstones;
  final Map<String, String> apiKeys;

  static _ServerSyncPayload? tryDecode(String? content) {
    if (content == null || content.trim().isEmpty) return null;
    try {
      final json = jsonDecode(content);
      if (json is! Map) return null;

      final rawServers = json['servers'];
      final rawTombstones = json['tombstones'];
      final servers = rawServers is List
          ? rawServers
                .whereType<Map>()
                .map((item) => Server.fromJson(Map<String, Object?>.from(item)))
                .toList()
          : <Server>[];
      return _ServerSyncPayload(
        updatedAt:
            DateTime.tryParse('${json['updatedAt']}') ??
            DateTime.fromMillisecondsSinceEpoch(0, isUtc: true),
        servers: servers,
        tombstones: _decodeTombstones(rawTombstones),
        apiKeys: _decodeApiKeys(rawServers),
      );
    } catch (_) {
      return null;
    }
  }

  static Map<String, DateTime> _decodeTombstones(Object? rawTombstones) {
    if (rawTombstones is! Map) return {};
    final tombstones = <String, DateTime>{};
    for (final entry in rawTombstones.entries) {
      final deletedAt = entry.value is String
          ? DateTime.tryParse(entry.value as String)
          : null;
      if (deletedAt != null) {
        tombstones[entry.key.toString()] = deletedAt;
      }
    }
    return tombstones;
  }

  static Map<String, String> _decodeApiKeys(Object? rawServers) {
    if (rawServers is! List) return const {};
    final apiKeys = <String, String>{};
    for (final item in rawServers.whereType<Map>()) {
      final syncId = item['syncId']?.toString() ?? '';
      final apiKey = item['apiKey']?.toString() ?? '';
      if (syncId.isNotEmpty && apiKey.isNotEmpty) {
        apiKeys[syncId] = apiKey;
      }
    }
    return apiKeys;
  }

  String get canonicalJson => const JsonEncoder.withIndent('  ').convert({
    'schemaVersion': 1,
    'updatedAt': updatedAt.toIso8601String(),
    'servers': servers.map(_serverCloudJson).toList()
      ..sort(
        (a, b) => (a['syncId'] as String).compareTo(b['syncId'] as String),
      ),
    'tombstones': tombstonesJsonMap,
  });

  String get serversJson => jsonEncode(
    servers.map(_serverCloudJson).toList()..sort(
      (a, b) => (a['syncId'] as String).compareTo(b['syncId'] as String),
    ),
  );

  String get tombstonesJson => jsonEncode(tombstonesJsonMap);

  Map<String, String> get tombstonesJsonMap {
    final sortedKeys = tombstones.keys.toList()..sort();
    return {
      for (final key in sortedKeys) key: tombstones[key]!.toIso8601String(),
    };
  }

  Map<String, Object?> _serverCloudJson(Server server) {
    final json = {
      'syncId': server.syncId,
      'name': server.name,
      'host': server.host,
      'port': server.port,
      'isHttps': server.isHttps,
      'allowInsecureConnections': server.allowInsecureConnections,
      'sortIndex': server.sortIndex,
      'createdAt': server.createdAt?.toIso8601String(),
      'updatedAt': server.updatedAt?.toIso8601String(),
    };
    final apiKey = apiKeys[server.syncId];
    if (apiKey != null && apiKey.isNotEmpty) {
      json['apiKey'] = apiKey;
    }
    return json;
  }
}

class _ServerSyncMergeResult {
  _ServerSyncMergeResult({
    required this.servers,
    required this.tombstones,
    required this.removedLocalServerIds,
    required this.changedLocalServers,
    required this.changedLocalTombstones,
  });

  final List<Server> servers;
  final Map<String, DateTime> tombstones;
  final List<int> removedLocalServerIds;
  final bool changedLocalServers;
  final bool changedLocalTombstones;
}
