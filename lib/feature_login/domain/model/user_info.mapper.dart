// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_info.dart';

class UserInfoMapper extends ClassMapperBase<UserInfo> {
  UserInfoMapper._();

  static UserInfoMapper? _instance;
  static UserInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserInfo';

  static String _$email(UserInfo v) => v.email;
  static const Field<UserInfo, String> _f$email = Field('email', _$email);
  static String _$password(UserInfo v) => v.password;
  static const Field<UserInfo, String> _f$password = Field(
    'password',
    _$password,
  );

  @override
  final MappableFields<UserInfo> fields = const {
    #email: _f$email,
    #password: _f$password,
  };

  static UserInfo _instantiate(DecodingData data) {
    return UserInfo(email: data.dec(_f$email), password: data.dec(_f$password));
  }

  @override
  final Function instantiate = _instantiate;

  static UserInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserInfo>(map);
  }

  static UserInfo fromJson(String json) {
    return ensureInitialized().decodeJson<UserInfo>(json);
  }
}

mixin UserInfoMappable {
  String toJson() {
    return UserInfoMapper.ensureInitialized().encodeJson<UserInfo>(
      this as UserInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return UserInfoMapper.ensureInitialized().encodeMap<UserInfo>(
      this as UserInfo,
    );
  }

  UserInfoCopyWith<UserInfo, UserInfo, UserInfo> get copyWith =>
      _UserInfoCopyWithImpl<UserInfo, UserInfo>(
        this as UserInfo,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserInfoMapper.ensureInitialized().stringifyValue(this as UserInfo);
  }

  @override
  bool operator ==(Object other) {
    return UserInfoMapper.ensureInitialized().equalsValue(
      this as UserInfo,
      other,
    );
  }

  @override
  int get hashCode {
    return UserInfoMapper.ensureInitialized().hashValue(this as UserInfo);
  }
}

extension UserInfoValueCopy<$R, $Out> on ObjectCopyWith<$R, UserInfo, $Out> {
  UserInfoCopyWith<$R, UserInfo, $Out> get $asUserInfo =>
      $base.as((v, t, t2) => _UserInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserInfoCopyWith<$R, $In extends UserInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password});
  UserInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserInfo, $Out>
    implements UserInfoCopyWith<$R, UserInfo, $Out> {
  _UserInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserInfo> $mapper =
      UserInfoMapper.ensureInitialized();
  @override
  $R call({String? email, String? password}) => $apply(
    FieldCopyWithData({
      if (email != null) #email: email,
      if (password != null) #password: password,
    }),
  );
  @override
  UserInfo $make(CopyWithData data) => UserInfo(
    email: data.get(#email, or: $value.email),
    password: data.get(#password, or: $value.password),
  );

  @override
  UserInfoCopyWith<$R2, UserInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

