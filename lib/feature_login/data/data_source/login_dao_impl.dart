import 'dart:io';

import 'package:debttracker/commons/utils.dart';
import 'package:debttracker/feature_login/data/data_source/login_dao.dart';
import 'package:debttracker/feature_login/domain/model/auth_response.dart';
import 'package:debttracker/feature_login/domain/model/login_exception.dart';
import 'package:debttracker/feature_login/domain/model/user_info.dart';
import 'package:http/http.dart' as http;
import 'package:multiple_result/multiple_result.dart';

class LoginDaoImpl extends LoginDao {
  final String _baseUrl = "http://127.0.0.1:8080/api/login";
  final int _requestTimeout = 5;

  @override
  Future<Result<AuthResponse, LoginException>> login(UserInfo userInfo) async {
    try {
      final response = await http
          .post(
            Uri.parse(_baseUrl),
            headers: buildHeaders(),
            body: userInfo.toJson(),
          )
          .timeout(
            Duration(seconds: _requestTimeout),
            onTimeout: () => timeoutResponse(),
          );
      switch (response.statusCode) {
        case HttpStatus.created:
          final AuthResponse authResponse = AuthResponseMapper.fromJson(
            response.body,
          );

          return Success(authResponse);
        default:
          return Error(
            LoginApiException(
              response.reasonPhrase ?? "Error creating the new Note",
              response.statusCode,
            ),
          );
      }
    } catch (e) {
      return Error(
        LoginApiException("Error creating the new Note FATAL", 99999),
      );
    }
  }

  @override
  Future<void> register(UserInfo userInfo) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
