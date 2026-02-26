import 'package:debttracker/feature_track_debt/debtor_list/presentation/debtor_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'debtor_list_viewmodel.g.dart';

@riverpod
class DebtorListViewmodel extends _$DebtorListViewmodel {
  @override
  DebtorListScreenState build() => DebtorListScreenLoading();
}
