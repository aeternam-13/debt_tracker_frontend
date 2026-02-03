sealed class LoginIntent {}

class TryLoginIntent extends LoginIntent {
  TryLoginIntent();
}

class EnteredUsernamIntent extends LoginIntent {
  final String username;
  EnteredUsernamIntent(this.username);
}

class EnteredPasswordIntent extends LoginIntent {
  final String password;
  EnteredPasswordIntent(this.password);
}
