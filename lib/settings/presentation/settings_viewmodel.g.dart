// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SettingsViewmodel)
final settingsViewmodelProvider = SettingsViewmodelProvider._();

final class SettingsViewmodelProvider
    extends $NotifierProvider<SettingsViewmodel, SettingsStateHolder> {
  SettingsViewmodelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingsViewmodelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingsViewmodelHash();

  @$internal
  @override
  SettingsViewmodel create() => SettingsViewmodel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsStateHolder value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsStateHolder>(value),
    );
  }
}

String _$settingsViewmodelHash() => r'fb6a068f1c010994087827d51ceaf1480f4c98c9';

abstract class _$SettingsViewmodel extends $Notifier<SettingsStateHolder> {
  SettingsStateHolder build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SettingsStateHolder, SettingsStateHolder>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SettingsStateHolder, SettingsStateHolder>,
              SettingsStateHolder,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
