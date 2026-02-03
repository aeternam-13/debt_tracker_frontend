// lib/core/http/api_service.dart
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class APIService {
  String _token = "";
  final String _baseUrl = 'http://127.0.0.1:8080';
  final http.Client _client = http.Client();

  void setToken(String token) {
    _token = token;
  }

  Map<String, String> _buildHeaders() {
    final headers = {HttpHeaders.contentTypeHeader: "application/json"};
    if (_token.isNotEmpty) {
      headers['Authorization'] = 'Bearer $_token';
    }
    return headers;
  }

  http.Response _timeoutResponse() =>
      http.Response("Request timeout", HttpStatus.requestTimeout);

  Future<http.Response> post(String path, {Map<String, dynamic>? body}) async {
    try {
      return await _client
          .post(
            Uri.parse('$_baseUrl$path'),
            headers: _buildHeaders(),
            body: body != null ? jsonEncode(body) : null,
          )
          .timeout(Duration(seconds: 5), onTimeout: _timeoutResponse);
    } catch (e) {
      rethrow;
    }
  }

  Future<http.Response> get(String path) {
    try {
      return _client
          .get(Uri.parse('$_baseUrl$path'), headers: _buildHeaders())
          .timeout(Duration(seconds: 5), onTimeout: _timeoutResponse);
    } catch (e) {
      rethrow;
    }
  }
}
