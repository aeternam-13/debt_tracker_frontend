import 'package:debttracker/feature_track_debt/domain/model/debtor.dart';
import 'package:debttracker/feature_track_debt/domain/model/transaction.dart';
import 'package:decimal/decimal.dart';

List<Debtor> debtorsDummy = [
  Debtor(
    name: "Any name one",
    balance: -99999,
    transactions: [
      Debt(
        amount: Decimal.parse("99999"),
        date: DateTime(2025, 2, 1),
        id: "54d6a5s465asdasdads",
        comments: "ahhhh",
      ),
    ],
    id: 'sdasda',
  ),

  Debtor(
    name: "Any name two",
    balance: 1,
    transactions: [
      Debt(
        amount: Decimal.parse("99999"),
        date: DateTime(2025, 2, 2),
        id: "54d6a5s465asdasdads",
        comments: "ahhhh",
      ),
      Payment(
        amount: Decimal.parse("100000"),
        date: DateTime(2025, 2, 3),
        id: "askdkasdj45647ad65s456asd456a",
        comments: "dasasd",
      ),
    ],
    id: 'sdasda',
  ),

  Debtor(
    name: "Any name randommmm",
    balance: 10,
    transactions: [
      Debt(
        amount: Decimal.parse("99999"),
        date: DateTime(2025, 2, 2),
        id: "54d6a5s465asdasdads",
        comments: "ahhhh",
      ),
      Payment(
        amount: Decimal.parse("100000"),
        date: DateTime(2025, 2, 3),
        id: "askdkasdj45647ad65s456asd456a",
        comments: "dasasd",
      ),
    ],
    id: 'sdasda',
  ),
];
