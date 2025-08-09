import 'package:dart_mappable/dart_mappable.dart';

part 'login_state_holder.mapper.dart';

@MappableClass()
class LoginStateHolder with LoginStateHolderMappable {
  final String username;
  final String password;

  LoginStateHolder({this.username = "", this.password = ""});
}
