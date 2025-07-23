import 'package:dart_mappable/dart_mappable.dart';
part 'user_info.mapper.dart';

@MappableClass()
class UserInfo with UserInfoMappable {
  final String email;
  final String password;

  UserInfo({required this.email, required this.password});
}
