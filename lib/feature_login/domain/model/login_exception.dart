sealed class LoginException implements Exception {
  final String message;
  LoginException(this.message);
}

class WrongCredentialsException extends LoginException {
  WrongCredentialsException(super.message);
}

class NotRegisteredException extends LoginException {
  NotRegisteredException(super.message);
}

class LoginApiException extends LoginException {
  final int statusCode;
  LoginApiException(super.message, this.statusCode);
}
