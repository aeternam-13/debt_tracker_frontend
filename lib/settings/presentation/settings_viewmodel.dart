import 'package:debttracker/settings/domain/model/custom_theme_mode.dart';
import 'package:debttracker/settings/presentation/settings_intent.dart';
import 'package:debttracker/settings/presentation/settings_state_holder.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsViewmodel extends StateNotifier<SettingsStateHolder> {
  SettingsViewmodel()
    : super(SettingsStateHolder(themeMode: CustomThemeMode.app));

  void onIntent(SettingsIntent intent) {
    switch (intent) {
      case ChangeThemeSettingsIntent():
        _toggleTheme(intent.themeMode);
    }
  }

  void _toggleTheme(CustomThemeMode themeMode) {
    state = state.copyWith(themeMode: themeMode);
  }
}
