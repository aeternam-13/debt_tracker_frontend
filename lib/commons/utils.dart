import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Response timeoutResponse() =>
    http.Response("Request timeout", HttpStatus.requestTimeout);

Map<String, String> buildHeaders() {
  Map<String, String> headers = {};

  headers[HttpHeaders.contentTypeHeader] = "application/json";

  return headers;
}
