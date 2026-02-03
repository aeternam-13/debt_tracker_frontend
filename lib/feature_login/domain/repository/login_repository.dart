import 'package:debttracker/feature_login/domain/model/auth_response.dart';
import 'package:debttracker/feature_login/domain/model/user_info.dart';
import 'package:debttracker/feature_login/domain/model/login_exception.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class LoginRepository {
  Future<Result<Unit, LoginException>> login(UserInfo userInfo);
  Future<Result<Unit, LoginException>> register(UserInfo userInfo);
}
