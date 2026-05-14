import 'dart:convert';

import 'package:dio/dio.dart';

class WebDavSyncConfig {
  const WebDavSyncConfig({
    required this.enabled,
    required this.url,
    required this.username,
    required this.password,
    required this.syncApiKeys,
  });

  final bool enabled;
  final String url;
  final String username;
  final String password;
  final bool syncApiKeys;

  bool get isConfigured => url.trim().isNotEmpty;
}

class WebDavSyncClient {
  WebDavSyncClient({
    required String url,
    required String username,
    required String password,
  }) : _payloadUri = _resolvePayloadUri(url),
       _dio = Dio(
         BaseOptions(
           headers: _headers(username, password),
           responseType: ResponseType.plain,
           connectTimeout: const Duration(seconds: 15),
           sendTimeout: const Duration(seconds: 30),
           receiveTimeout: const Duration(seconds: 30),
           validateStatus: (_) => true,
         ),
       );

  static const payloadFileName = 'mono_dash_server_sync_payload_v1.json';

  final Dio _dio;
  final Uri _payloadUri;

  Future<String?> readPayload() async {
    final response = await _dio.getUri<String>(_payloadUri);
    if (response.statusCode == 404) return null;
    if (!_isSuccess(response.statusCode)) {
      throw WebDavSyncException(
        operation: WebDavSyncOperation.read,
        statusCode: response.statusCode,
      );
    }
    return response.data;
  }

  Future<void> writePayload(String payload) async {
    var response = await _putPayload(payload);
    if (_isSuccess(response.statusCode)) return;
    if (response.statusCode == 404 || response.statusCode == 409) {
      await _ensureParentCollection();
      response = await _putPayload(payload);
      if (_isSuccess(response.statusCode)) return;
    }
    if (!_isSuccess(response.statusCode)) {
      throw WebDavSyncException(
        operation: WebDavSyncOperation.write,
        statusCode: response.statusCode,
      );
    }
  }

  Future<Response<void>> _putPayload(String payload) {
    return _dio.putUri<void>(
      _payloadUri,
      data: payload,
      options: Options(contentType: 'application/json; charset=utf-8'),
    );
  }

  Future<void> _ensureParentCollection() async {
    final segments = _payloadUri.pathSegments;
    if (segments.length <= 1) return;

    var currentPath = '/';
    for (final segment in segments.take(segments.length - 1)) {
      if (segment.isEmpty) continue;
      currentPath = '$currentPath$segment/';
      final collectionUri = _payloadUri.replace(path: currentPath);
      final response = await _dio.requestUri<void>(
        collectionUri,
        options: Options(method: 'MKCOL'),
      );
      final status = response.statusCode;
      if (status == 301 ||
          status == 302 ||
          status == 307 ||
          status == 308 ||
          status == 403 ||
          status == 405 ||
          status == 409 ||
          _isSuccess(status)) {
        continue;
      }
      throw WebDavSyncException(
        operation: WebDavSyncOperation.createDirectory,
        statusCode: status,
      );
    }
  }

  static Uri _resolvePayloadUri(String rawUrl) {
    final trimmed = rawUrl.trim();
    final uri = Uri.parse(trimmed);
    if (!uri.hasScheme || uri.host.isEmpty) {
      throw FormatException('Invalid WebDAV URL', rawUrl);
    }
    if (uri.pathSegments.isNotEmpty &&
        uri.pathSegments.last.endsWith('.json')) {
      return uri;
    }

    final path = uri.path.endsWith('/') ? uri.path : '${uri.path}/';
    return uri.replace(path: '$path$payloadFileName');
  }

  static Map<String, String> _headers(String username, String password) {
    if (username.isEmpty && password.isEmpty) return const {};
    final token = base64Encode(utf8.encode('$username:$password'));
    return {'Authorization': 'Basic $token'};
  }

  static bool _isSuccess(int? statusCode) {
    return statusCode != null && statusCode >= 200 && statusCode < 300;
  }
}

enum WebDavSyncOperation { read, write, createDirectory }

class WebDavSyncException implements Exception {
  const WebDavSyncException({required this.operation, this.statusCode});

  final WebDavSyncOperation operation;
  final int? statusCode;

  @override
  String toString() {
    final status = statusCode == null ? 'unknown' : 'HTTP $statusCode';
    return 'WebDAV ${operation.name} failed: $status';
  }
}
