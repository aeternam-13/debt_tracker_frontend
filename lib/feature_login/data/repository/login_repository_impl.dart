import 'package:debttracker/feature_login/data/data_source/login_dao.dart';
import 'package:debttracker/feature_login/domain/model/user_info.dart';
import 'package:debttracker/feature_login/domain/model/login_exception.dart';
import 'package:debttracker/feature_login/domain/repository/login_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDao _dao;

  LoginRepositoryImpl(this._dao);

  @override
  Future<Result<Unit, LoginException>> login(UserInfo userInfo) async {
    final res = await _dao.login(userInfo);
    return res.map(
      successMapper: (authResponse) {
        //_apiService.setToken(authResponse.token);
        return unit;
      },
      errorMapper: (error) => error,
    );
  }

  @override
  Future<Result<Unit, LoginException>> register(UserInfo userInfo) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
