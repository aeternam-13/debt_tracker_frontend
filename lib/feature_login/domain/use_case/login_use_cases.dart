import 'package:debttracker/feature_login/domain/repository/login_repository.dart';
import 'package:debttracker/feature_login/domain/use_case/login.dart';

class LoginUseCases {
  final Login login;

  LoginUseCases(LoginRepository repository, {required this.login});
}
