import 'package:flutter/material.dart';

class UsernameTextfield extends StatelessWidget {
  const UsernameTextfield({
    super.key,
    required this.controller,
    required this.onValueChange,
  });
  final TextEditingController controller;
  final ValueChanged<String> onValueChange;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      onChanged: onValueChange,
      decoration: InputDecoration(
        label: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          padding: const EdgeInsets.only(left: 3, right: 3, top: 4),
          child: const Text('Username'),
        ),
        suffix: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
