import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../../domain/entities/dashboard.dart';
import '../../domain/entities/server.dart';
import '../../presentation/features/servers/widgets/server_card_shared.dart';

class IosServerWidgetBridge {
  const IosServerWidgetBridge._();

  static const MethodChannel _channel = MethodChannel(
    'mono_dash/server_widget',
  );

  static bool get _isAvailable =>
      !kIsWeb && defaultTargetPlatform == TargetPlatform.iOS;

  static Future<void> syncServers(
    List<Server> servers, {
    Map<int, String> apiKeys = const {},
    int requestTimeoutSeconds = 60,
    Map<String, String> customHeaders = const {},
  }) async {
    if (!_isAvailable) return;
    await _invoke('syncServers', {
      'servers': [
        for (final server in servers)
          {
            ..._serverPayload(server),
            if (apiKeys[server.id]?.isNotEmpty == true)
              'apiKey': apiKeys[server.id],
          },
      ],
      'settings': {
        'requestTimeoutSeconds': requestTimeoutSeconds,
        'customHeaders': customHeaders,
      },
    });
  }

  static Future<void> upsertSnapshot({
    required Server server,
    required Dashboard dashboard,
    required int latencyMs,
  }) async {
    if (!_isAvailable) return;
    await _invoke('upsertSnapshot', {
      'snapshot': _snapshotPayload(
        server: server,
        dashboard: dashboard,
        latencyMs: latencyMs,
      ),
    });
  }

  static Future<void> removeServer(int id) async {
    if (!_isAvailable) return;
    await _invoke('removeServer', {'id': id});
  }

  static Future<void> _invoke(String method, Object? arguments) async {
    try {
      await _channel.invokeMethod<void>(method, arguments);
    } on MissingPluginException {
      // Widget syncing is an iOS native affordance. Other platforms ignore it.
    } on PlatformException catch (error, stackTrace) {
      FlutterError.reportError(
        FlutterErrorDetails(
          exception: error,
          stack: stackTrace,
          library: 'ios_server_widget_bridge',
          context: ErrorDescription('syncing iOS server widget data'),
        ),
      );
    }
  }

  static Map<String, Object?> _serverPayload(Server server) {
    return {
      'id': server.id,
      'name': server.name,
      'displayName': server.displayName,
      'host': server.host,
      'port': server.port,
      'isHttps': server.isHttps,
      'allowInsecureConnections': server.allowInsecureConnections,
      'sortIndex': server.sortIndex,
    };
  }

  static Map<String, Object?> _snapshotPayload({
    required Server server,
    required Dashboard dashboard,
    required int latencyMs,
  }) {
    final base = dashboard.base;
    final current = dashboard.current;
    final disk = primaryDisk(current.disks);
    final title = server.name?.isNotEmpty == true
        ? server.name!
        : (base.hostname.isNotEmpty ? base.hostname : server.displayName);
    final subtitle = serverSubtitle(
      distro: base.prettyDistro,
      ip: base.ipV4Addr,
      fallback: base.platform,
    );

    return {
      ..._serverPayload(server),
      'title': title,
      'subtitle': subtitle.isEmpty ? '${server.host}:${server.port}' : subtitle,
      'osName': _osName(base),
      'uptimeSeconds': current.uptimeSeconds,
      'cpuPercent': current.cpuUsedPercent,
      'memoryPercent': current.memoryUsedPercent,
      'diskPercent': disk?.usedPercent,
      'websiteCount': base.websiteNumber,
      'databaseCount': base.databaseNumber,
      'appCount': base.appInstalledNumber,
      'taskCount': base.cronjobNumber,
      'netBytesSent': current.netBytesSent,
      'netBytesRecv': current.netBytesRecv,
      'uploadBytesPerSecond': 0,
      'downloadBytesPerSecond': 0,
      'totalTrafficBytes': current.netBytesSent + current.netBytesRecv,
      'latencyMs': latencyMs,
      'updatedAt': DateTime.now().toIso8601String(),
    };
  }

  static String _osName(DashboardBase base) {
    final source = [
      base.prettyDistro,
      base.platform,
      base.platformFamily,
      base.os,
    ].where((value) => value.isNotEmpty).join(' ').toLowerCase();

    if (source.contains('ubuntu')) return 'Ubuntu';
    if (source.contains('debian')) return 'Debian';
    if (source.contains('centos')) return 'CentOS';
    if (source.contains('fedora')) return 'Fedora';
    if (source.contains('arch')) return 'Arch';
    if (source.contains('suse')) return 'openSUSE';
    if (base.platform.isNotEmpty) return base.platform;
    return 'Linux';
  }
}
