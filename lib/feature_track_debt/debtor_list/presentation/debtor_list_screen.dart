import 'package:debttracker/feature_track_debt/debtor_list/presentation/debtor_list_state.dart';
import 'package:debttracker/feature_track_debt/debtor_list/presentation/debtor_list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DebtorListScreen extends ConsumerWidget {
  const DebtorListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(debtorListViewmodelProvider);
    final viewmodel = ref.read(debtorListViewmodelProvider.notifier);
    return SafeArea(
      child: Scaffold(
        body: switch (state) {
          DebtorListScreenLoading() => Column(children: []),
        },
      ),
    );
  }
}
