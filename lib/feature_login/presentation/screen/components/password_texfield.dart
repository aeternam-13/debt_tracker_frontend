import 'package:flutter/material.dart';

class PasswordTexfield extends StatefulWidget {
  const PasswordTexfield({
    super.key,
    required this.controller,
    required this.onValueChange,
  });
  final TextEditingController controller;
  final ValueChanged<String> onValueChange;
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
    final theme = Theme.of(context);
    return TextFormField(
      controller: widget.controller,
      obscureText: _hidePassword,

      onChanged: widget.onValueChange,
      decoration: InputDecoration(
        label: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          padding: const EdgeInsets.only(left: 3, right: 3, top: 4),
          child: Text(
            'Password',
            style: theme.textTheme.bodyLarge!.copyWith(
              fontWeight: .w700,
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        suffix: IconButton(
          onPressed: _togglePasswordVisibility,
          color: _hidePassword ? null : theme.colorScheme.primary,
          icon: Icon(_hidePassword ? Icons.visibility : Icons.visibility_off),
        ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
