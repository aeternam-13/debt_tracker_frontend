import 'package:flutter/material.dart';

class UsernameTextfield extends StatefulWidget {
  const UsernameTextfield({super.key});

  @override
  State<UsernameTextfield> createState() => _UsernameTextfieldState();
}

class _UsernameTextfieldState extends State<UsernameTextfield> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: _controller,
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
