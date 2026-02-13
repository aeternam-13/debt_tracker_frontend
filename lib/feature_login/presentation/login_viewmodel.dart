import 'dart:async';
import 'dart:developer';

import 'package:debttracker/feature_login/di/login_providers.dart';
import 'package:debttracker/feature_login/domain/model/user_info.dart';
import 'package:debttracker/feature_login/domain/use_case/login_use_cases.dart';
import 'package:debttracker/feature_login/presentation/login_intent.dart';
import 'package:debttracker/feature_login/presentation/login_state_holder.dart';
import 'package:debttracker/feature_login/presentation/login_ui_event.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_viewmodel.g.dart';

@riverpod
class LoginViewmodel extends _$LoginViewmodel {
  late final LoginUseCases _useCases;

  final _uiEventController = StreamController<LoginUiEvent>.broadcast();

  Stream<LoginUiEvent> get uiEventStream => _uiEventController.stream;

  @override
  LoginStateHolder build() {
    _useCases = ref.read(loginUseCasesProvider);
    ref.onDispose(() => _uiEventController.close());
    return LoginStateHolder(
      username: "ae@aeternam.com",
      password: "password123",
    );
  }

  bool _isLoading = false;

  void onIntent(LoginIntent intent) {
    switch (intent) {
      case TryLoginIntent():
        _loggin(UserInfo(email: state.username, password: state.password));
      case EnteredUsernamIntent():
        log(intent.username);
        state = state.copyWith(username: intent.username);
      case EnteredPasswordIntent():
        state = state.copyWith(password: intent.password);
    }
  }

  Future<void> _loggin(UserInfo userInfo) async {
    if (_isLoading) return;
    _isLoading = true;
    _uiEventController.add(DisplayLoadingDialog());
    await Future.delayed(Duration(seconds: 2));
    final res = await _useCases.login(userInfo);

    res.map(
      successMapper: (_) {
        _uiEventController.add(NavigateToMainScreen());
      },
      errorMapper: (exception) {
        _uiEventController.add(ShowErrorDialog(exception.message));
      },
    );
    _uiEventController.add(NavigateBack());
    _isLoading = false;
  }
}
