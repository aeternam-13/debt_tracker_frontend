import 'package:flutter/material.dart';

void errorSnackBar(BuildContext context, String text) {
  if (!context.mounted) return;
  final theme = Theme.of(context);
  final snackBar = SnackBar(
    duration: Duration(seconds: 3),

    content: Text(
      text,
      style: theme.textTheme.bodyMedium?.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: theme.colorScheme.error,
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
