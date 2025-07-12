import 'package:debttracker/commons/safe_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DebtorListScreen extends ConsumerWidget {
  const DebtorListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeScope(
      appBar: AppBar(
        title: const Text("Debtors"),

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      child: Column(children: [Text("List")]),
    );
  }
}
