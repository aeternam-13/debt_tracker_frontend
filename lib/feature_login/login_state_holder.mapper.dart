// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_state_holder.dart';

class LoginStateHolderMapper extends ClassMapperBase<LoginStateHolder> {
  LoginStateHolderMapper._();

  static LoginStateHolderMapper? _instance;
  static LoginStateHolderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginStateHolderMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LoginStateHolder';

  @override
  final MappableFields<LoginStateHolder> fields = const {};

  static LoginStateHolder _instantiate(DecodingData data) {
    return LoginStateHolder();
  }

  @override
  final Function instantiate = _instantiate;

  static LoginStateHolder fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginStateHolder>(map);
  }

  static LoginStateHolder fromJson(String json) {
    return ensureInitialized().decodeJson<LoginStateHolder>(json);
  }
}

mixin LoginStateHolderMappable {
  String toJson() {
    return LoginStateHolderMapper.ensureInitialized()
        .encodeJson<LoginStateHolder>(this as LoginStateHolder);
  }

  Map<String, dynamic> toMap() {
    return LoginStateHolderMapper.ensureInitialized()
        .encodeMap<LoginStateHolder>(this as LoginStateHolder);
  }

  LoginStateHolderCopyWith<LoginStateHolder, LoginStateHolder, LoginStateHolder>
      get copyWith =>
          _LoginStateHolderCopyWithImpl<LoginStateHolder, LoginStateHolder>(
              this as LoginStateHolder, $identity, $identity);
  @override
  String toString() {
    return LoginStateHolderMapper.ensureInitialized()
        .stringifyValue(this as LoginStateHolder);
  }

  @override
  bool operator ==(Object other) {
    return LoginStateHolderMapper.ensureInitialized()
        .equalsValue(this as LoginStateHolder, other);
  }

  @override
  int get hashCode {
    return LoginStateHolderMapper.ensureInitialized()
        .hashValue(this as LoginStateHolder);
  }
}

extension LoginStateHolderValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoginStateHolder, $Out> {
  LoginStateHolderCopyWith<$R, LoginStateHolder, $Out>
      get $asLoginStateHolder => $base
          .as((v, t, t2) => _LoginStateHolderCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LoginStateHolderCopyWith<$R, $In extends LoginStateHolder, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  LoginStateHolderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LoginStateHolderCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginStateHolder, $Out>
    implements LoginStateHolderCopyWith<$R, LoginStateHolder, $Out> {
  _LoginStateHolderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginStateHolder> $mapper =
      LoginStateHolderMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  LoginStateHolder $make(CopyWithData data) => LoginStateHolder();

  @override
  LoginStateHolderCopyWith<$R2, LoginStateHolder, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoginStateHolderCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
