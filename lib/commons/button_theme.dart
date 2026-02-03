import 'package:flutter/material.dart';

ButtonStyle primaryCustomButton(ThemeData theme) {
  return ElevatedButton.styleFrom(
    minimumSize: Size(300, 55),
    side: BorderSide(width: 1, color: theme.colorScheme.primary),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
}

ButtonStyle primarySuperLargeButton(ThemeData theme) => primaryCustomButton(
  theme,
).copyWith(minimumSize: WidgetStateProperty.all(const Size(300, 70)));

ButtonStyle smallPrimaryCustomButton(ThemeData theme) {
  return ElevatedButton.styleFrom(
    minimumSize: Size(140, 40),
    side: BorderSide(width: 1, color: theme.colorScheme.primary),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    textStyle: theme.textTheme.bodyMedium?.copyWith(
      fontWeight: FontWeight.bold,
    ),
  );
}

ButtonStyle smallPrimaryCustomButtonSelected(ThemeData theme) {
  return ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    foregroundColor: theme.colorScheme.onPrimary,
    minimumSize: Size(140, 40),
    side: BorderSide(width: 1, color: theme.colorScheme.primary),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    textStyle: theme.textTheme.bodyMedium?.copyWith(
      fontWeight: FontWeight.bold,
    ),
  );
}
