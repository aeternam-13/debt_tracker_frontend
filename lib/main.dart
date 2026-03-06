import 'dart:ui';

import 'package:debttracker/destinations/app_routes.dart';
import 'package:debttracker/feature_add_debtor/presentation/screens/add_debtor_screen.dart';
import 'package:debttracker/feature_login/presentation/screen/login_screen.dart';
import 'package:debttracker/feature_debtor_list/debtor_list.dart';
import 'package:debttracker/settings/domain/model/theme_config.dart';
import 'package:debttracker/settings/presentation/settings_screen.dart';
import 'package:debttracker/settings/presentation/settings_viewmodel.dart';
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
    final settings = ref.watch(settingsViewmodelProvider);

    ThemeConfig themeConfig = settings.themeConfig;

    return MaterialApp.router(
      title: 'Flutter Demo',
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch},
      ),
      theme: themeConfig.theme,
      darkTheme: themeConfig.darkTheme,
      highContrastDarkTheme: themeConfig.highContrastDarkTheme,
      highContrastTheme: themeConfig.highContrastTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.login.path,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: AppRoutes.debtorList.path,
          builder: (BuildContext context, GoRouterState state) {
            return const DebtorListScreen();
          },
        ),
        GoRoute(
          path: AppRoutes.login.path,
          builder: (BuildContext context, GoRouterState state) {
            return const LoginScreen();
          },
        ),
        GoRoute(
          path: AppRoutes.settings.path,
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsScreen();
          },
        ),
        GoRoute(
          path: AppRoutes.addDebtor.path,
          builder: (BuildContext context, GoRouterState state) =>
              const AddDebtorScreen(),
        ),
      ],
    ),
  ],
);
