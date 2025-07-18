import 'package:flutter/material.dart';

class PasswordTexfield extends StatefulWidget {
  const PasswordTexfield({super.key});

  @override
  State<PasswordTexfield> createState() => _PasswordTexfieldState();
}

class _PasswordTexfieldState extends State<PasswordTexfield> {
  bool _hidePassword = true;

  void _togglePasswordVisibility() => setState(() {
    _hidePassword = !_hidePassword;
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _hidePassword,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 28),
        isDense: false,
        label: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          padding: const EdgeInsets.only(left: 3, right: 3, top: 4),
          child: const Text('Password'),
        ),
        suffix: IconButton(
          onPressed: _togglePasswordVisibility,
          color: Theme.of(context).colorScheme.primary,
          icon: Icon(_hidePassword ? Icons.visibility : Icons.visibility_off),
        ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
