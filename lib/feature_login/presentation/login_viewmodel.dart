import 'dart:async';

import 'package:debttracker/feature_login/domain/model/user_info.dart';
import 'package:debttracker/feature_login/domain/use_case/login_use_cases.dart';
import 'package:debttracker/feature_login/presentation/login_intent.dart';
import 'package:debttracker/feature_login/presentation/login_state_holder.dart';
import 'package:debttracker/feature_login/presentation/login_ui_event.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginViewmodel extends StateNotifier<LoginStateHolder> {
  final LoginUseCases _useCases;
  final _uiEventController = StreamController<LoginUiEvent>.broadcast();
  Stream<LoginUiEvent> get uiEventStream => _uiEventController.stream;
  LoginViewmodel(this._useCases) : super(LoginStateHolder());

  void onIntent(LoginIntent intent) {
    switch (intent) {
      case TryLoginIntent():
        _loggin(UserInfo(email: state.username, password: state.password));
      case EnteredUsernamIntent():
        state = state.copyWith(username: intent.username);
      case EnteredPasswordIntent():
        state = state.copyWith(password: intent.password);
    }
  }

  Future<void> _loggin(UserInfo userInfo) async {
    final res = await _useCases.login(userInfo);
    res.map(
      successMapper: (_) {
        //TODO ui event to navite into new screen
      },
      errorMapper: (exception) {},
    );
  }
}
