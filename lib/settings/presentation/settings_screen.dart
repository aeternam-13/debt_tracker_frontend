import 'package:debttracker/commons/button_theme.dart';
import 'package:debttracker/commons/safe_scope.dart';
import 'package:debttracker/settings/domain/model/custom_theme_mode.dart';
import 'package:debttracker/settings/presentation/settings_intent.dart';
import 'package:debttracker/settings/presentation/settings_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingsViewmodelProvider);
    final viewmodel = ref.read(settingsViewmodelProvider.notifier);

    final theme = Theme.of(context);
    return SafeScope(
      appBar: AppBar(
        leading: IconButton(
          icon: (Icon(Icons.dangerous)),
          onPressed: () => context.pop(),
        ),
        title: Text("Settings"),
        foregroundColor: theme.colorScheme.onPrimary,
        backgroundColor: theme.colorScheme.primary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ThemeButton(
                callback: () => viewmodel.onIntent(
                  ChangeThemeSettingsIntent(
                    themeMode: CustomThemeMode.forceDark,
                  ),
                ),
                icon: Icons.dark_mode,
                text: "Dark mode",
                selected: state.themeMode == CustomThemeMode.forceDark,
              ),

              ThemeButton(
                callback: () => viewmodel.onIntent(
                  ChangeThemeSettingsIntent(
                    themeMode: CustomThemeMode.forceLight,
                  ),
                ),
                icon: Icons.light_mode,
                text: "Ligth mode",
                selected: state.themeMode == CustomThemeMode.forceLight,
              ),

              ThemeButton(
                callback: () => viewmodel.onIntent(
                  ChangeThemeSettingsIntent(themeMode: CustomThemeMode.app),
                ),
                icon: Icons.no_accounts,
                text: "Default mode",
                selected: state.themeMode == CustomThemeMode.app,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ThemeButton extends StatelessWidget {
  const ThemeButton({
    super.key,
    required this.callback,
    this.icon = Icons.hourglass_empty,
    required this.text,
    required this.selected,
  });

  final VoidCallback callback;
  final IconData icon;
  final String text;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: selected
          ? smallPrimaryCustomButtonSelected(theme)
          : smallPrimaryCustomButton(theme),
      onPressed: callback,
      child: Row(spacing: 8, children: [Text(text), Icon(icon)]),
    );
  }
}
