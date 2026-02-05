// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loginUiEvent)
final loginUiEventProvider = LoginUiEventProvider._();

final class LoginUiEventProvider
    extends
        $FunctionalProvider<
          AsyncValue<LoginUiEvent>,
          LoginUiEvent,
          Stream<LoginUiEvent>
        >
    with $FutureModifier<LoginUiEvent>, $StreamProvider<LoginUiEvent> {
  LoginUiEventProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginUiEventProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginUiEventHash();

  @$internal
  @override
  $StreamProviderElement<LoginUiEvent> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<LoginUiEvent> create(Ref ref) {
    return loginUiEvent(ref);
  }
}

String _$loginUiEventHash() => r'959791f12b7ce9f463e34bafbcd6d6fe67504a35';

@ProviderFor(loginDao)
final loginDaoProvider = LoginDaoProvider._();

final class LoginDaoProvider
    extends $FunctionalProvider<LoginDao, LoginDao, LoginDao>
    with $Provider<LoginDao> {
  LoginDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginDaoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginDaoHash();

  @$internal
  @override
  $ProviderElement<LoginDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoginDao create(Ref ref) {
    return loginDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginDao>(value),
    );
  }
}

String _$loginDaoHash() => r'f98c3e07a5d44406f739e1d9ed2983a31a3e48dc';

@ProviderFor(loginRepository)
final loginRepositoryProvider = LoginRepositoryProvider._();

final class LoginRepositoryProvider
    extends
        $FunctionalProvider<LoginRepository, LoginRepository, LoginRepository>
    with $Provider<LoginRepository> {
  LoginRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginRepositoryHash();

  @$internal
  @override
  $ProviderElement<LoginRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoginRepository create(Ref ref) {
    return loginRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginRepository>(value),
    );
  }
}

String _$loginRepositoryHash() => r'5388e8763cacc325d788a01a3d07af2551b2d40a';

@ProviderFor(loginUseCases)
final loginUseCasesProvider = LoginUseCasesProvider._();

final class LoginUseCasesProvider
    extends $FunctionalProvider<LoginUseCases, LoginUseCases, LoginUseCases>
    with $Provider<LoginUseCases> {
  LoginUseCasesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginUseCasesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginUseCasesHash();

  @$internal
  @override
  $ProviderElement<LoginUseCases> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoginUseCases create(Ref ref) {
    return loginUseCases(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginUseCases value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginUseCases>(value),
    );
  }
}

String _$loginUseCasesHash() => r'7afb1b7ce8a9defb8c6732aa01458a3df303a692';
