import 'package:debttracker/commons/button_theme.dart';
import 'package:debttracker/commons/dialogs.dart';
import 'package:debttracker/commons/safe_scope.dart';
import 'package:debttracker/commons/snack_bars.dart';
import 'package:debttracker/feature_login/di/login_providers.dart';
import 'package:debttracker/feature_login/presentation/login_intent.dart';
import 'package:debttracker/feature_login/presentation/login_state_holder.dart';
import 'package:debttracker/feature_login/presentation/login_ui_event.dart';
import 'package:debttracker/feature_login/presentation/screen/components/password_texfield.dart';
import 'package:debttracker/feature_login/presentation/screen/components/username_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void initState() {
    super.initState();
    ref.listenManual(loginVMProvider, (previousState, newState) {
      _updateController(_username, newState.username);
      _updateController(_password, newState.password);
    });
  }

  void _updateController(TextEditingController controller, String newValue) {
    if (controller.text != newValue) {
      controller.text = newValue;
      controller.selection = TextSelection.fromPosition(
        TextPosition(offset: newValue.length),
      );
    }
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  void _onUiEvent(BuildContext context, LoginUiEvent event) {
    switch (event) {
      case NavigateToMainScreen():
        throw UnimplementedError();
      case DisplayLoadingDialog():
        loadingDialog(context, "loading");
      case HideLoadingDialog():
        Navigator.of(context).pop();
      case NavigateBack():
        Navigator.of(context).pop();
      case ShowErrorDialog():
        errorSnackBar(context, event.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    //final viewmodel = ref.read(addEditNoteVMProvider.notifier);
    LoginStateHolder screenState = ref.watch(loginVMProvider);
    final viewmodel = ref.read(loginVMProvider.notifier);

    ref.listen<AsyncValue<LoginUiEvent>>(loginUiEventProvider, (prev, next) {
      next.whenData((event) => _onUiEvent(context, event));
    });

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
                              UsernameTextfield(
                                controller: _username,
                                onValueChange: (String value) => viewmodel
                                    .onIntent(EnteredUsernamIntent(value)),
                              ),
                              PasswordTexfield(
                                controller: _password,
                                onValueChange: (String value) => viewmodel
                                    .onIntent(EnteredPasswordIntent(value)),
                              ),
                              ElevatedButton(
                                onPressed: () =>
                                    viewmodel.onIntent(TryLoginIntent()),
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
