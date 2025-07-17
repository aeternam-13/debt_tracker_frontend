import 'package:debttracker/feature_login/login_screen/login_screen.dart';
import 'package:debttracker/feature_track_debt/debtor_list/debtor_list.dart';
import 'package:debttracker/settings/di/providers.dart';
import 'package:debttracker/settings/domain/model/theme_config.dart';
import 'package:debttracker/settings/presentation/settings_state_holder.dart';
import 'package:debttracker/settings/presentation/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(ProviderScope(child: const DebtTracker()));
}

class DebtTracker extends ConsumerWidget {
  const DebtTracker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SettingsStateHolder settings = ref.watch(settingsVMProvider);
    ThemeConfig themeConfig = settings.themeConfig;

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: themeConfig.theme,
      darkTheme: themeConfig.darkTheme,
      highContrastDarkTheme: themeConfig.highContrastDarkTheme,
      highContrastTheme: themeConfig.highContrastTheme,
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/debtorlist',
          builder: (BuildContext context, GoRouterState state) {
            return const DebtorListScreen();
          },
        ),
        GoRoute(
          path: '/login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginScreen();
          },
        ),
        GoRoute(
          path: '/settings',
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsScreen();
          },
        ),
      ],
    ),
  ],
);
