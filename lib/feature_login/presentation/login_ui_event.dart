sealed class LoginUiEvent {}

class NavigateToMainScreen extends LoginUiEvent {}

class DisplayLoadingDialog extends LoginUiEvent {}

class ShowErrorDialog extends LoginUiEvent {
  String text;
  ShowErrorDialog(this.text);
}

class HideLoadingDialog extends LoginUiEvent {}

class NavigateBack extends LoginUiEvent {}
