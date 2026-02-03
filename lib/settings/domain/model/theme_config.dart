import 'package:flutter/material.dart';

class ThemeConfig {
  final ThemeData theme;
  final ThemeData darkTheme;
  final ThemeData highContrastDarkTheme;
  final ThemeData highContrastTheme;

  const ThemeConfig({
    required this.theme,
    required this.darkTheme,
    required this.highContrastDarkTheme,
    required this.highContrastTheme,
  });
}
