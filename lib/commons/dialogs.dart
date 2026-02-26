import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void loadingDialog(
  BuildContext context, {
  String text = "Loading, please wait",
}) async {
  final theme = Theme.of(context);
  await showDialog<String>(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      final theme = Theme.of(context);
      return PopScope(
        canPop: false,
        child: AlertDialog(
          title: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 22),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.colorScheme.primary,
                      fontWeight: .w800,
                    ),
                  ),
                ),
                SpinKitWave(
                  color: theme.colorScheme.inversePrimary,
                  size: 50,
                  itemCount: 8,
                  duration: Duration(milliseconds: 1400),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
