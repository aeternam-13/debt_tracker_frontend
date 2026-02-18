// 1. Define the Custom Mapper
import 'package:dart_mappable/dart_mappable.dart';
import 'package:decimal/decimal.dart';

class DecimalMapper extends SimpleMapper<Decimal> {
  const DecimalMapper();

  @override
  Decimal decode(dynamic value) => Decimal.parse(value.toString());

  @override
  dynamic encode(Decimal value) => value.toString();
}
