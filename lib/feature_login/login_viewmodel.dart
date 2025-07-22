import 'package:debttracker/feature_login/login_state.dart';
import 'package:debttracker/feature_login/login_state_holder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginViewmodel extends StateNotifier<LoginState> {
  LoginViewmodel() : super(InitialLoginState());
}
