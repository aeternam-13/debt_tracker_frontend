import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void loadingDialog(
  BuildContext context, {
  String text = "Loading, please wait",
}) async {
  await showDialog<String>(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      final theme = Theme.of(context);
      return PopScope(
        canPop: false,
        child: AlertDialog(
          title: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .stretch,
            spacing: 32,
            children: [
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: theme.colorScheme.primary,
                  fontWeight: .w800,
                ),
              ),
              SpinKitRipple(
                color: theme.colorScheme.primary,
                size: 60,
                duration: Duration(milliseconds: 1400),
              ),
            ],
          ),
        ),
      );
    },
  );
}
