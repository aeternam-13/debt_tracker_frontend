// lib/core/http/api_service.dart
import 'package:http/http.dart' as http;

class APIService {
  String _token = "";
  final String _baseUrl = 'http://127.0.0.1:8080/api';
  final http.Client _client = http.Client();

  void setToken(String token) {
    _token = token;
  }

  Map<String, String> _buildHeaders() {
    final headers = {'Content-Type': 'application/json'};
    if (_token.isNotEmpty) {
      headers['Authorization'] = 'Bearer $_token';
    }
    return headers;
  }

  Future<http.Response> post(String path, {String? body}) {
    return _client.post(
      Uri.parse('$_baseUrl$path'),
      headers: _buildHeaders(),
      body: body,
    );
  }

  Future<http.Response> get(String path) {
    return _client.get(Uri.parse('$_baseUrl$path'), headers: _buildHeaders());
  }
}
