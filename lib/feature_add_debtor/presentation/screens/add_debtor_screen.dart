import 'package:debttracker/commons/safe_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddDebtorScreen extends ConsumerStatefulWidget {
  const AddDebtorScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddDebtorScreenState();
}

class _AddDebtorScreenState extends ConsumerState<AddDebtorScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeScope(child: Column(children: [Text("Add debtor")]));
  }
}
