import 'package:debttracker/feature_login/domain/model/auth_response.dart';
import 'package:debttracker/feature_login/domain/model/login_exception.dart';
import 'package:debttracker/feature_login/domain/model/user_info.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class LoginDao {
  Future<Result<AuthResponse, LoginException>> login(UserInfo userInfo);
  Future<void> register(UserInfo userInfo);
}
