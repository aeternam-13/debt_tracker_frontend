import 'package:debttracker/settings/domain/model/custom_theme_mode.dart';

sealed class SettingsIntent {}

class ChangeThemeSettingsIntent extends SettingsIntent {
  final CustomThemeMode themeMode;

  ChangeThemeSettingsIntent({required this.themeMode});
}
