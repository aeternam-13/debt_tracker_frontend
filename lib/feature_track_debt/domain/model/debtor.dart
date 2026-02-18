import 'package:debttracker/feature_track_debt/domain/model/transaction.dart';

final class Debtor {
  final String id;
  final String name;
  final double balance;
  final List<Transaction> transactions;

  Debtor({
    required this.name,
    required this.balance,
    required this.transactions,
    required this.id,
  });

  bool get hasDebt => balance < 0;
}
