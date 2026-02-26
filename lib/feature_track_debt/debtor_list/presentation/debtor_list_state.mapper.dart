// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'debtor_list_state.dart';

class DebtorListScreenStateMapper
    extends ClassMapperBase<DebtorListScreenState> {
  DebtorListScreenStateMapper._();

  static DebtorListScreenStateMapper? _instance;
  static DebtorListScreenStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DebtorListScreenStateMapper._());
      DebtorListScreenLoadingMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DebtorListScreenState';

  @override
  final MappableFields<DebtorListScreenState> fields = const {};

  static DebtorListScreenState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('DebtorListScreenState');
  }

  @override
  final Function instantiate = _instantiate;

  static DebtorListScreenState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DebtorListScreenState>(map);
  }

  static DebtorListScreenState fromJson(String json) {
    return ensureInitialized().decodeJson<DebtorListScreenState>(json);
  }
}

mixin DebtorListScreenStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  DebtorListScreenStateCopyWith<
    DebtorListScreenState,
    DebtorListScreenState,
    DebtorListScreenState
  >
  get copyWith;
}

abstract class DebtorListScreenStateCopyWith<
  $R,
  $In extends DebtorListScreenState,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  DebtorListScreenStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class DebtorListScreenLoadingMapper
    extends ClassMapperBase<DebtorListScreenLoading> {
  DebtorListScreenLoadingMapper._();

  static DebtorListScreenLoadingMapper? _instance;
  static DebtorListScreenLoadingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = DebtorListScreenLoadingMapper._(),
      );
      DebtorListScreenStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DebtorListScreenLoading';

  @override
  final MappableFields<DebtorListScreenLoading> fields = const {};

  static DebtorListScreenLoading _instantiate(DecodingData data) {
    return DebtorListScreenLoading();
  }

  @override
  final Function instantiate = _instantiate;

  static DebtorListScreenLoading fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DebtorListScreenLoading>(map);
  }

  static DebtorListScreenLoading fromJson(String json) {
    return ensureInitialized().decodeJson<DebtorListScreenLoading>(json);
  }
}

mixin DebtorListScreenLoadingMappable {
  String toJson() {
    return DebtorListScreenLoadingMapper.ensureInitialized()
        .encodeJson<DebtorListScreenLoading>(this as DebtorListScreenLoading);
  }

  Map<String, dynamic> toMap() {
    return DebtorListScreenLoadingMapper.ensureInitialized()
        .encodeMap<DebtorListScreenLoading>(this as DebtorListScreenLoading);
  }

  DebtorListScreenLoadingCopyWith<
    DebtorListScreenLoading,
    DebtorListScreenLoading,
    DebtorListScreenLoading
  >
  get copyWith =>
      _DebtorListScreenLoadingCopyWithImpl<
        DebtorListScreenLoading,
        DebtorListScreenLoading
      >(this as DebtorListScreenLoading, $identity, $identity);
  @override
  String toString() {
    return DebtorListScreenLoadingMapper.ensureInitialized().stringifyValue(
      this as DebtorListScreenLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return DebtorListScreenLoadingMapper.ensureInitialized().equalsValue(
      this as DebtorListScreenLoading,
      other,
    );
  }

  @override
  int get hashCode {
    return DebtorListScreenLoadingMapper.ensureInitialized().hashValue(
      this as DebtorListScreenLoading,
    );
  }
}

extension DebtorListScreenLoadingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DebtorListScreenLoading, $Out> {
  DebtorListScreenLoadingCopyWith<$R, DebtorListScreenLoading, $Out>
  get $asDebtorListScreenLoading => $base.as(
    (v, t, t2) => _DebtorListScreenLoadingCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class DebtorListScreenLoadingCopyWith<
  $R,
  $In extends DebtorListScreenLoading,
  $Out
>
    implements DebtorListScreenStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  DebtorListScreenLoadingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DebtorListScreenLoadingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DebtorListScreenLoading, $Out>
    implements
        DebtorListScreenLoadingCopyWith<$R, DebtorListScreenLoading, $Out> {
  _DebtorListScreenLoadingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DebtorListScreenLoading> $mapper =
      DebtorListScreenLoadingMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  DebtorListScreenLoading $make(CopyWithData data) => DebtorListScreenLoading();

  @override
  DebtorListScreenLoadingCopyWith<$R2, DebtorListScreenLoading, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DebtorListScreenLoadingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

