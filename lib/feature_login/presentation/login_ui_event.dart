sealed class LoginUiEvent {}

class NavigateToMainScreen extends LoginUiEvent {}

class DisplayLoadingDialog extends LoginUiEvent {}

class HideLoadingDialog extends LoginUiEvent {}
