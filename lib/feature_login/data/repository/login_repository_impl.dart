import 'package:debttracker/feature_login/data/data_source/login_dao.dart';
import 'package:debttracker/feature_login/domain/model/auth_response.dart';
import 'package:debttracker/feature_login/domain/model/user_info.dart';
import 'package:debttracker/feature_login/domain/model/login_exception.dart';
import 'package:debttracker/feature_login/domain/repository/login_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDao _dao;

  LoginRepositoryImpl(this._dao);

  @override
  Future<Result<AuthResponse, LoginException>> login(UserInfo userInfo) =>
      _dao.login(userInfo);

  @override
  Future<Result<Unit, LoginException>> register(UserInfo userInfo) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
