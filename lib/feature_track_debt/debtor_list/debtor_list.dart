import 'package:debttracker/commons/safe_scope.dart';
import 'package:debttracker/feature_track_debt/domain/model/debtor.dart';
import 'package:debttracker/feature_track_debt/dummy_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DebtorListScreen extends ConsumerWidget {
  const DebtorListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeScope(
      floatingButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.person_add_alt_outlined,
          size: 34,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: const Text("Debtors"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      child: DebtorList(debtors: debtorsDummy),
    );
  }
}

class DebtorList extends StatelessWidget {
  const DebtorList({super.key, required this.debtors});
  final List<Debtor> debtors;

  @override
  Widget build(BuildContext context) => ListView.builder(
    itemCount: debtors.length,
    itemBuilder: (context, index) {
      return DebtorCard(debtor: debtors[index]);
    },
  );
}

class DebtorCard extends StatelessWidget {
  const DebtorCard({super.key, required this.debtor});

  final Debtor debtor;

  @override
  Widget build(BuildContext context) {
    final accentColor = debtor.hasDebt
        ? const Color.fromARGB(255, 255, 139, 131)
        : const Color.fromARGB(255, 143, 251, 147);

    return InkWell(
      onTap: () {},
      child: Card(
        shadowColor: accentColor,
        color: accentColor.withValues(alpha: .01),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 4,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(debtor.name),
                  Text(
                    debtor.balance.toString(),
                    style: TextStyle(color: accentColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("Total operations"),
                  Text(debtor.transactions.length.toString()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
