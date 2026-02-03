import 'package:debttracker/feature_login/domain/model/login_exception.dart';
import 'package:debttracker/feature_login/domain/model/user_info.dart';
import 'package:debttracker/feature_login/domain/repository/login_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class Login {
  final LoginRepository _repository;

  Login(this._repository);

  Future<Result<Unit, LoginException>> call(UserInfo userInfo) async =>
      await _repository.login(userInfo);
}
