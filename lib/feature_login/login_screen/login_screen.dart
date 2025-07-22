import 'package:debttracker/commons/button_theme.dart';
import 'package:debttracker/commons/safe_scope.dart';
import 'package:debttracker/feature_login/login_screen/components/password_texfield.dart';
import 'package:debttracker/feature_login/login_screen/components/username_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return SafeScope(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(36),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: theme.colorScheme.primary.withAlpha(8),
                          blurRadius: 16,
                          spreadRadius: 24,
                        ),
                      ],
                      border: Border.all(color: theme.colorScheme.primary),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Column(
                      spacing: 36,
                      children: [
                        Text(
                          "DebtTracker",
                          style: theme.textTheme.displayLarge?.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 800),
                          child: Column(
                            spacing: 36,
                            children: [
                              UsernameTextfield(),
                              PasswordTexfield(),
                              ElevatedButton(
                                onPressed: () {},
                                style: primarySuperLargeButton(theme),
                                child: Text("Login"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Version 0.0.1", style: theme.textTheme.labelSmall),
                ElevatedButton(
                  onPressed: () => context.push("/settings"),
                  child: Text("Settings"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
