// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginViewmodel)
final loginViewmodelProvider = LoginViewmodelProvider._();

final class LoginViewmodelProvider
    extends $NotifierProvider<LoginViewmodel, LoginStateHolder> {
  LoginViewmodelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginViewmodelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginViewmodelHash();

  @$internal
  @override
  LoginViewmodel create() => LoginViewmodel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginStateHolder value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginStateHolder>(value),
    );
  }
}

String _$loginViewmodelHash() => r'ee2ac686163c06df30298bccfeee250d3cd4640e';

abstract class _$LoginViewmodel extends $Notifier<LoginStateHolder> {
  LoginStateHolder build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<LoginStateHolder, LoginStateHolder>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LoginStateHolder, LoginStateHolder>,
              LoginStateHolder,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
