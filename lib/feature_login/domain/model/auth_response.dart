import 'package:dart_mappable/dart_mappable.dart';
part 'auth_response.mapper.dart';

@MappableClass()
class AuthResponse with AuthResponseMappable {
  final String token;

  AuthResponse({required this.token});
}
