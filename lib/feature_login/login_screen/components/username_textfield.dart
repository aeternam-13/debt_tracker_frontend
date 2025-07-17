import 'package:flutter/material.dart';

class UsernameTextfield extends StatelessWidget {
  const UsernameTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 28),
        label: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          padding: const EdgeInsets.only(left: 3, right: 3, top: 4),
          child: const Text('Username'),
        ),

        border: const OutlineInputBorder(),
      ),
    );
  }
}
