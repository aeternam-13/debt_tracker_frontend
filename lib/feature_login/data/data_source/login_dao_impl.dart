import 'dart:developer';
import 'dart:io';
import 'package:debttracker/core/domain/services/api_service.dart';
import 'package:debttracker/feature_login/data/data_source/login_dao.dart';
import 'package:debttracker/feature_login/domain/model/auth_response.dart';
import 'package:debttracker/feature_login/domain/model/login_exception.dart';
import 'package:debttracker/feature_login/domain/model/user_info.dart';
import 'package:multiple_result/multiple_result.dart';

class LoginDaoImpl extends LoginDao {
  final String _baseUrl = "/login";
  final int _requestTimeout = 5;
  final APIService _apiService;

  LoginDaoImpl(this._apiService);

  @override
  Future<Result<AuthResponse, LoginException>> login(UserInfo userInfo) async {
    try {
      final response = await _apiService.post(_baseUrl, body: userInfo.toMap());
      log(response.statusCode.toString());
      switch (response.statusCode) {
        case HttpStatus.ok:
          final authResponse = AuthResponseMapper.fromJson(response.body);

          _apiService.setToken(authResponse.token);

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
