// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debtor_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DebtorListViewmodel)
final debtorListViewmodelProvider = DebtorListViewmodelProvider._();

final class DebtorListViewmodelProvider
    extends $NotifierProvider<DebtorListViewmodel, DebtorListScreenState> {
  DebtorListViewmodelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'debtorListViewmodelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$debtorListViewmodelHash();

  @$internal
  @override
  DebtorListViewmodel create() => DebtorListViewmodel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DebtorListScreenState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DebtorListScreenState>(value),
    );
  }
}

String _$debtorListViewmodelHash() =>
    r'a99c0601fa82fdfa48dde2d748c7003f03ec23f0';

abstract class _$DebtorListViewmodel extends $Notifier<DebtorListScreenState> {
  DebtorListScreenState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<DebtorListScreenState, DebtorListScreenState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DebtorListScreenState, DebtorListScreenState>,
              DebtorListScreenState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
