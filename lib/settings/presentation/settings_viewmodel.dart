import 'package:debttracker/settings/domain/model/custom_theme_mode.dart';
import 'package:debttracker/settings/presentation/settings_intent.dart';
import 'package:debttracker/settings/presentation/settings_state_holder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_viewmodel.g.dart';

@riverpod
class SettingsViewmodel extends _$SettingsViewmodel {
  
  @override
  SettingsStateHolder build() => SettingsStateHolder();

  void onIntent(SettingsIntent intent) {
    switch (intent) {
      case ChangeThemeSettingsIntent():
        _toggleTheme(intent.themeMode);
    }
  }

  void _toggleTheme(CustomThemeMode themeMode) =>
      state = state.copyWith(themeMode: themeMode);
}
