import 'dart:developer';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:debttracker/settings/domain/model/custom_theme_mode.dart';
import 'package:debttracker/settings/domain/model/theme_config.dart';
import 'package:debttracker/theme/theme.dart';
import 'package:flutter/material.dart';

part 'settings_state_holder.mapper.dart';

@MappableClass()
class SettingsStateHolder with SettingsStateHolderMappable {
  final CustomThemeMode themeMode;

  SettingsStateHolder({this.themeMode = CustomThemeMode.app});

  final _appTheme = DebtTrackerMainTheme(ThemeData().textTheme);

  ThemeConfig get themeConfig {
    switch (themeMode) {
      case CustomThemeMode.app:
        return ThemeConfig(
          theme: _appTheme.light(),
          darkTheme: _appTheme.dark(),
          highContrastDarkTheme: _appTheme.darkHighContrast(),
          highContrastTheme: _appTheme.lightHighContrast(),
        );
      case CustomThemeMode.forceLight:
        return ThemeConfig(
          theme: _appTheme.light(),
          darkTheme: _appTheme.light(),
          highContrastDarkTheme: _appTheme.lightHighContrast(),
          highContrastTheme: _appTheme.lightHighContrast(),
        );
      case CustomThemeMode.forceDark:
        return ThemeConfig(
          theme: _appTheme.dark(),
          darkTheme: _appTheme.dark(),
          highContrastDarkTheme: _appTheme.darkHighContrast(),
          highContrastTheme: _appTheme.dark(),
        );
    }
  }
}
