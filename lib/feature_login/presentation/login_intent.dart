import 'package:debttracker/feature_login/domain/model/user_info.dart';

sealed class LoginIntent {}

class TryLoginIntent extends LoginIntent {
  final UserInfo userInfo;

  TryLoginIntent({required this.userInfo});
}
