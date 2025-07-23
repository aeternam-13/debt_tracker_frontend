import 'package:debttracker/feature_login/domain/model/user_info.dart';
import 'package:debttracker/feature_login/presentation/login_intent.dart';
import 'package:debttracker/feature_login/presentation/login_state.dart';
import 'package:debttracker/feature_login/presentation/login_state_holder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginViewmodel extends StateNotifier<LoginState> {
  final Ref ref;
  LoginViewmodel(this.ref) : super(InitialLoginState());

  void onIntent(LoginIntent intent) {
    switch (intent) {
      case TryLoginIntent():
        _loggin(intent.userInfo);
    }
  }

  Future<void> _loggin(UserInfo userInfo) async {}
}
