import 'package:dart_mappable/dart_mappable.dart';
import 'package:debttracker/core/domain/model/decimal_mapper.dart';
import 'package:decimal/decimal.dart';

part 'transaction.mapper.dart';

@MappableClass(
  discriminatorKey: 'type',
  includeCustomMappers: [DecimalMapper()],
)
sealed class Transaction with TransactionMappable {
  final Decimal amount;
  final DateTime date;
  final String id;
  final String comments;

  Transaction({
    required this.amount,
    required this.date,
    required this.id,
    this.comments = "",
  });
}

@MappableClass(discriminatorValue: 'payment')
final class Payment extends Transaction with PaymentMappable {
  Payment({
    required super.amount,
    required super.date,
    required super.id,
    required super.comments,
  });
}

@MappableClass(discriminatorValue: 'debt')
final class Debt extends Transaction with DebtMappable {
  Debt({
    required super.amount,
    required super.date,
    required super.id,
    required super.comments,
  });
}
