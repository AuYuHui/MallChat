// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_from_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatFromUserModel _$ChatFromUserModelFromJson(Map<String, dynamic> json) {
  return _ChatFromUserModel.fromJson(json);
}

/// @nodoc
mixin _$ChatFromUserModel {
  int get uid => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get locPlace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatFromUserModelCopyWith<ChatFromUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatFromUserModelCopyWith<$Res> {
  factory $ChatFromUserModelCopyWith(
          ChatFromUserModel value, $Res Function(ChatFromUserModel) then) =
      _$ChatFromUserModelCopyWithImpl<$Res, ChatFromUserModel>;
  @useResult
  $Res call({int uid, String? username, String? avatar, String? locPlace});
}

/// @nodoc
class _$ChatFromUserModelCopyWithImpl<$Res, $Val extends ChatFromUserModel>
    implements $ChatFromUserModelCopyWith<$Res> {
  _$ChatFromUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? locPlace = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      locPlace: freezed == locPlace
          ? _value.locPlace
          : locPlace // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatFromUserModelCopyWith<$Res>
    implements $ChatFromUserModelCopyWith<$Res> {
  factory _$$_ChatFromUserModelCopyWith(_$_ChatFromUserModel value,
          $Res Function(_$_ChatFromUserModel) then) =
      __$$_ChatFromUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int uid, String? username, String? avatar, String? locPlace});
}

/// @nodoc
class __$$_ChatFromUserModelCopyWithImpl<$Res>
    extends _$ChatFromUserModelCopyWithImpl<$Res, _$_ChatFromUserModel>
    implements _$$_ChatFromUserModelCopyWith<$Res> {
  __$$_ChatFromUserModelCopyWithImpl(
      _$_ChatFromUserModel _value, $Res Function(_$_ChatFromUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? locPlace = freezed,
  }) {
    return _then(_$_ChatFromUserModel(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      locPlace: freezed == locPlace
          ? _value.locPlace
          : locPlace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatFromUserModel implements _ChatFromUserModel {
  _$_ChatFromUserModel(
      {required this.uid, this.username, this.avatar, this.locPlace});

  factory _$_ChatFromUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatFromUserModelFromJson(json);

  @override
  final int uid;
  @override
  final String? username;
  @override
  final String? avatar;
  @override
  final String? locPlace;

  @override
  String toString() {
    return 'ChatFromUserModel(uid: $uid, username: $username, avatar: $avatar, locPlace: $locPlace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatFromUserModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.locPlace, locPlace) ||
                other.locPlace == locPlace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, username, avatar, locPlace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatFromUserModelCopyWith<_$_ChatFromUserModel> get copyWith =>
      __$$_ChatFromUserModelCopyWithImpl<_$_ChatFromUserModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatFromUserModelToJson(
      this,
    );
  }
}

abstract class _ChatFromUserModel implements ChatFromUserModel {
  factory _ChatFromUserModel(
      {required final int uid,
      final String? username,
      final String? avatar,
      final String? locPlace}) = _$_ChatFromUserModel;

  factory _ChatFromUserModel.fromJson(Map<String, dynamic> json) =
      _$_ChatFromUserModel.fromJson;

  @override
  int get uid;
  @override
  String? get username;
  @override
  String? get avatar;
  @override
  String? get locPlace;
  @override
  @JsonKey(ignore: true)
  _$$_ChatFromUserModelCopyWith<_$_ChatFromUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
