import 'package:dart_mappable/dart_mappable.dart';
part 'auth_response.mapper.dart';

@MappableClass()
class AuthResponse with AuthResponseMappable {
  final String token;
  final String refreshToken;

  AuthResponse({required this.token, required this.refreshToken});
}
