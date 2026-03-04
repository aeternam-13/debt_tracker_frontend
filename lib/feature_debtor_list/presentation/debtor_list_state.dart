import 'package:dart_mappable/dart_mappable.dart';

part 'debtor_list_state.mapper.dart';

@MappableClass()
sealed class DebtorListScreenState with DebtorListScreenStateMappable {}

@MappableClass()
class DebtorListScreenLoading extends DebtorListScreenState
    with DebtorListScreenLoadingMappable {}
