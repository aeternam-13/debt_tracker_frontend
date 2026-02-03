import "package:flutter/material.dart";

class DebtTrackerMainTheme {
  final TextTheme textTheme;

  const DebtTrackerMainTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3a008c),
      surfaceTint: Color(0xff6d3fce),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff531cb3),
      onPrimaryContainer: Color(0xffbfa4ff),
      secondary: Color(0xff7930a0),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff944bbb),
      onSecondaryContainer: Color(0xfffce8ff),
      tertiary: Color(0xff784c90),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffe4b1fd),
      onTertiaryContainer: Color(0xff6a3f81),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff7f9),
      onSurface: Color(0xff1f1a1d),
      onSurfaceVariant: Color(0xff504444),
      outline: Color(0xff827474),
      outlineVariant: Color(0xffd4c2c3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff342f32),
      inversePrimary: Color(0xffd1bcff),
      primaryFixed: Color(0xffe9ddff),
      onPrimaryFixed: Color(0xff23005b),
      primaryFixedDim: Color(0xffd1bcff),
      onPrimaryFixedVariant: Color(0xff551fb5),
      secondaryFixed: Color(0xfff6d9ff),
      onSecondaryFixed: Color(0xff310049),
      secondaryFixedDim: Color(0xffe7b3ff),
      onSecondaryFixedVariant: Color(0xff6b2092),
      tertiaryFixed: Color(0xfff5d9ff),
      onTertiaryFixed: Color(0xff2f0248),
      tertiaryFixedDim: Color(0xffe6b4ff),
      onTertiaryFixedVariant: Color(0xff5f3476),
      surfaceDim: Color(0xffe1d7dc),
      surfaceBright: Color(0xfffff7f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbf1f5),
      surfaceContainer: Color(0xfff5ebef),
      surfaceContainerHigh: Color(0xfff0e6ea),
      surfaceContainerHighest: Color(0xffeae0e4),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3a008c),
      surfaceTint: Color(0xff6d3fce),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff531cb3),
      onPrimaryContainer: Color(0xffe5d7ff),
      secondary: Color(0xff580280),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff944bbb),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4d2364),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff885ba0),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7f9),
      onSurface: Color(0xff141013),
      onSurfaceVariant: Color(0xff3f3334),
      outline: Color(0xff5c4f50),
      outlineVariant: Color(0xff786a6a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff342f32),
      inversePrimary: Color(0xffd1bcff),
      primaryFixed: Color(0xff7c50de),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff6333c3),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff954cbc),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff7b31a2),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff885ba0),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6e4386),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffcdc4c8),
      surfaceBright: Color(0xfffff7f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbf1f5),
      surfaceContainer: Color(0xfff0e6ea),
      surfaceContainerHigh: Color(0xffe4dade),
      surfaceContainerHighest: Color(0xffd9cfd3),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff370085),
      surfaceTint: Color(0xff6d3fce),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff531cb3),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4a006c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6e2395),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff421859),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff613779),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7f9),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff34292a),
      outlineVariant: Color(0xff534647),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff342f32),
      inversePrimary: Color(0xffd1bcff),
      primaryFixed: Color(0xff5723b7),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff3f0096),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6e2395),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff53007a),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff613779),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff491f61),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbfb6ba),
      surfaceBright: Color(0xfffff7f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff8eef2),
      surfaceContainer: Color(0xffeae0e4),
      surfaceContainerHigh: Color(0xffdbd2d6),
      surfaceContainerHighest: Color(0xffcdc4c8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd1bcff),
      surfaceTint: Color(0xffd1bcff),
      onPrimary: Color(0xff3c0090),
      primaryContainer: Color(0xff531cb3),
      onPrimaryContainer: Color(0xffbfa4ff),
      secondary: Color(0xffe7b3ff),
      onSecondary: Color(0xff500075),
      secondaryContainer: Color(0xff944bbb),
      onSecondaryContainer: Color(0xfffce8ff),
      tertiary: Color(0xfff4d6ff),
      onTertiary: Color(0xff461d5e),
      tertiaryContainer: Color(0xffe4b1fd),
      onTertiaryContainer: Color(0xff6a3f81),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff161215),
      onSurface: Color(0xffeae0e4),
      onSurfaceVariant: Color(0xffd4c2c3),
      outline: Color(0xff9d8d8e),
      outlineVariant: Color(0xff504444),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeae0e4),
      inversePrimary: Color(0xff6d3fce),
      primaryFixed: Color(0xffe9ddff),
      onPrimaryFixed: Color(0xff23005b),
      primaryFixedDim: Color(0xffd1bcff),
      onPrimaryFixedVariant: Color(0xff551fb5),
      secondaryFixed: Color(0xfff6d9ff),
      onSecondaryFixed: Color(0xff310049),
      secondaryFixedDim: Color(0xffe7b3ff),
      onSecondaryFixedVariant: Color(0xff6b2092),
      tertiaryFixed: Color(0xfff5d9ff),
      onTertiaryFixed: Color(0xff2f0248),
      tertiaryFixedDim: Color(0xffe6b4ff),
      onTertiaryFixedVariant: Color(0xff5f3476),
      surfaceDim: Color(0xff161215),
      surfaceBright: Color(0xff3d383b),
      surfaceContainerLowest: Color(0xff110d10),
      surfaceContainerLow: Color(0xff1f1a1d),
      surfaceContainer: Color(0xff231e21),
      surfaceContainerHigh: Color(0xff2e292c),
      surfaceContainerHighest: Color(0xff393337),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe4d6ff),
      surfaceTint: Color(0xffd1bcff),
      onPrimary: Color(0xff2f0075),
      primaryContainer: Color(0xffa178ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff3d1ff),
      onSecondary: Color(0xff40005e),
      secondaryContainer: Color(0xffbc71e4),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff4d6ff),
      onTertiary: Color(0xff3d1355),
      tertiaryContainer: Color(0xffe4b1fd),
      onTertiaryContainer: Color(0xff4b2162),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff161215),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffebd8d8),
      outline: Color(0xffbfaeae),
      outlineVariant: Color(0xff9c8d8d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeae0e4),
      inversePrimary: Color(0xff5621b6),
      primaryFixed: Color(0xffe9ddff),
      onPrimaryFixed: Color(0xff170041),
      primaryFixedDim: Color(0xffd1bcff),
      onPrimaryFixedVariant: Color(0xff43009f),
      secondaryFixed: Color(0xfff6d9ff),
      onSecondaryFixed: Color(0xff210033),
      secondaryFixedDim: Color(0xffe7b3ff),
      onSecondaryFixedVariant: Color(0xff580280),
      tertiaryFixed: Color(0xfff5d9ff),
      onTertiaryFixed: Color(0xff210034),
      tertiaryFixedDim: Color(0xffe6b4ff),
      onTertiaryFixedVariant: Color(0xff4d2364),
      surfaceDim: Color(0xff161215),
      surfaceBright: Color(0xff494346),
      surfaceContainerLowest: Color(0xff0a0609),
      surfaceContainerLow: Color(0xff211c1f),
      surfaceContainer: Color(0xff2b262a),
      surfaceContainerHigh: Color(0xff363134),
      surfaceContainerHighest: Color(0xff423c3f),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff5edff),
      surfaceTint: Color(0xffd1bcff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffcdb7ff),
      onPrimaryContainer: Color(0xff100032),
      secondary: Color(0xfffceaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe5aeff),
      onSecondaryContainer: Color(0xff180027),
      tertiary: Color(0xfffceaff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe4b1fd),
      onTertiaryContainer: Color(0xff1b002c),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff161215),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffebec),
      outlineVariant: Color(0xffd0bebf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeae0e4),
      inversePrimary: Color(0xff5621b6),
      primaryFixed: Color(0xffe9ddff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffd1bcff),
      onPrimaryFixedVariant: Color(0xff170041),
      secondaryFixed: Color(0xfff6d9ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe7b3ff),
      onSecondaryFixedVariant: Color(0xff210033),
      tertiaryFixed: Color(0xfff5d9ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe6b4ff),
      onTertiaryFixedVariant: Color(0xff210034),
      surfaceDim: Color(0xff161215),
      surfaceBright: Color(0xff554e52),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff231e21),
      surfaceContainer: Color(0xff342f32),
      surfaceContainerHigh: Color(0xff3f3a3d),
      surfaceContainerHighest: Color(0xff4b4549),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
