// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'settings_state_holder.dart';

class SettingsStateHolderMapper extends ClassMapperBase<SettingsStateHolder> {
  SettingsStateHolderMapper._();

  static SettingsStateHolderMapper? _instance;
  static SettingsStateHolderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsStateHolderMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsStateHolder';

  static CustomThemeMode _$themeMode(SettingsStateHolder v) => v.themeMode;
  static const Field<SettingsStateHolder, CustomThemeMode> _f$themeMode =
      Field('themeMode', _$themeMode);

  @override
  final MappableFields<SettingsStateHolder> fields = const {
    #themeMode: _f$themeMode,
  };

  static SettingsStateHolder _instantiate(DecodingData data) {
    return SettingsStateHolder(themeMode: data.dec(_f$themeMode));
  }

  @override
  final Function instantiate = _instantiate;

  static SettingsStateHolder fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SettingsStateHolder>(map);
  }

  static SettingsStateHolder fromJson(String json) {
    return ensureInitialized().decodeJson<SettingsStateHolder>(json);
  }
}

mixin SettingsStateHolderMappable {
  String toJson() {
    return SettingsStateHolderMapper.ensureInitialized()
        .encodeJson<SettingsStateHolder>(this as SettingsStateHolder);
  }

  Map<String, dynamic> toMap() {
    return SettingsStateHolderMapper.ensureInitialized()
        .encodeMap<SettingsStateHolder>(this as SettingsStateHolder);
  }

  SettingsStateHolderCopyWith<SettingsStateHolder, SettingsStateHolder,
      SettingsStateHolder> get copyWith => _SettingsStateHolderCopyWithImpl<
          SettingsStateHolder, SettingsStateHolder>(
      this as SettingsStateHolder, $identity, $identity);
  @override
  String toString() {
    return SettingsStateHolderMapper.ensureInitialized()
        .stringifyValue(this as SettingsStateHolder);
  }

  @override
  bool operator ==(Object other) {
    return SettingsStateHolderMapper.ensureInitialized()
        .equalsValue(this as SettingsStateHolder, other);
  }

  @override
  int get hashCode {
    return SettingsStateHolderMapper.ensureInitialized()
        .hashValue(this as SettingsStateHolder);
  }
}

extension SettingsStateHolderValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsStateHolder, $Out> {
  SettingsStateHolderCopyWith<$R, SettingsStateHolder, $Out>
      get $asSettingsStateHolder => $base.as(
          (v, t, t2) => _SettingsStateHolderCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SettingsStateHolderCopyWith<$R, $In extends SettingsStateHolder,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({CustomThemeMode? themeMode});
  SettingsStateHolderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SettingsStateHolderCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsStateHolder, $Out>
    implements SettingsStateHolderCopyWith<$R, SettingsStateHolder, $Out> {
  _SettingsStateHolderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsStateHolder> $mapper =
      SettingsStateHolderMapper.ensureInitialized();
  @override
  $R call({CustomThemeMode? themeMode}) =>
      $apply(FieldCopyWithData({if (themeMode != null) #themeMode: themeMode}));
  @override
  SettingsStateHolder $make(CopyWithData data) => SettingsStateHolder(
      themeMode: data.get(#themeMode, or: $value.themeMode));

  @override
  SettingsStateHolderCopyWith<$R2, SettingsStateHolder, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SettingsStateHolderCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
