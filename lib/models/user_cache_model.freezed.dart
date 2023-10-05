// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cache_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCacheModel _$UserCacheModelFromJson(Map<String, dynamic> json) {
  return _UserCacheModel.fromJson(json);
}

/// @nodoc
mixin _$UserCacheModel {
  int get uid => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get locPlace => throw _privateConstructorUsedError;
  bool? get needRefresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCacheModelCopyWith<UserCacheModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCacheModelCopyWith<$Res> {
  factory $UserCacheModelCopyWith(
          UserCacheModel value, $Res Function(UserCacheModel) then) =
      _$UserCacheModelCopyWithImpl<$Res, UserCacheModel>;
  @useResult
  $Res call(
      {int uid,
      String avatar,
      String name,
      String? locPlace,
      bool? needRefresh});
}

/// @nodoc
class _$UserCacheModelCopyWithImpl<$Res, $Val extends UserCacheModel>
    implements $UserCacheModelCopyWith<$Res> {
  _$UserCacheModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? avatar = null,
    Object? name = null,
    Object? locPlace = freezed,
    Object? needRefresh = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locPlace: freezed == locPlace
          ? _value.locPlace
          : locPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      needRefresh: freezed == needRefresh
          ? _value.needRefresh
          : needRefresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCacheModelCopyWith<$Res>
    implements $UserCacheModelCopyWith<$Res> {
  factory _$$_UserCacheModelCopyWith(
          _$_UserCacheModel value, $Res Function(_$_UserCacheModel) then) =
      __$$_UserCacheModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int uid,
      String avatar,
      String name,
      String? locPlace,
      bool? needRefresh});
}

/// @nodoc
class __$$_UserCacheModelCopyWithImpl<$Res>
    extends _$UserCacheModelCopyWithImpl<$Res, _$_UserCacheModel>
    implements _$$_UserCacheModelCopyWith<$Res> {
  __$$_UserCacheModelCopyWithImpl(
      _$_UserCacheModel _value, $Res Function(_$_UserCacheModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? avatar = null,
    Object? name = null,
    Object? locPlace = freezed,
    Object? needRefresh = freezed,
  }) {
    return _then(_$_UserCacheModel(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locPlace: freezed == locPlace
          ? _value.locPlace
          : locPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      needRefresh: freezed == needRefresh
          ? _value.needRefresh
          : needRefresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCacheModel implements _UserCacheModel {
  _$_UserCacheModel(
      {required this.uid,
      required this.avatar,
      required this.name,
      this.locPlace,
      this.needRefresh});

  factory _$_UserCacheModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserCacheModelFromJson(json);

  @override
  final int uid;
  @override
  final String avatar;
  @override
  final String name;
  @override
  final String? locPlace;
  @override
  final bool? needRefresh;

  @override
  String toString() {
    return 'UserCacheModel(uid: $uid, avatar: $avatar, name: $name, locPlace: $locPlace, needRefresh: $needRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCacheModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.locPlace, locPlace) ||
                other.locPlace == locPlace) &&
            (identical(other.needRefresh, needRefresh) ||
                other.needRefresh == needRefresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, avatar, name, locPlace, needRefresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCacheModelCopyWith<_$_UserCacheModel> get copyWith =>
      __$$_UserCacheModelCopyWithImpl<_$_UserCacheModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCacheModelToJson(
      this,
    );
  }
}

abstract class _UserCacheModel implements UserCacheModel {
  factory _UserCacheModel(
      {required final int uid,
      required final String avatar,
      required final String name,
      final String? locPlace,
      final bool? needRefresh}) = _$_UserCacheModel;

  factory _UserCacheModel.fromJson(Map<String, dynamic> json) =
      _$_UserCacheModel.fromJson;

  @override
  int get uid;
  @override
  String get avatar;
  @override
  String get name;
  @override
  String? get locPlace;
  @override
  bool? get needRefresh;
  @override
  @JsonKey(ignore: true)
  _$$_UserCacheModelCopyWith<_$_UserCacheModel> get copyWith =>
      throw _privateConstructorUsedError;
}
