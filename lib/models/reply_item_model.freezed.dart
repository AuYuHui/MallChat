// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReplyItemModel _$ReplyItemModelFromJson(Map<String, dynamic> json) {
  return _ReplyItemModel.fromJson(json);
}

/// @nodoc
mixin _$ReplyItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;
  int? get canCallback => throw _privateConstructorUsedError;
  int? get gapCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyItemModelCopyWith<ReplyItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyItemModelCopyWith<$Res> {
  factory $ReplyItemModelCopyWith(
          ReplyItemModel value, $Res Function(ReplyItemModel) then) =
      _$ReplyItemModelCopyWithImpl<$Res, ReplyItemModel>;
  @useResult
  $Res call(
      {int? id,
      String? username,
      int? type,
      dynamic body,
      int? canCallback,
      int? gapCount});
}

/// @nodoc
class _$ReplyItemModelCopyWithImpl<$Res, $Val extends ReplyItemModel>
    implements $ReplyItemModelCopyWith<$Res> {
  _$ReplyItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? type = freezed,
    Object? body = freezed,
    Object? canCallback = freezed,
    Object? gapCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
      canCallback: freezed == canCallback
          ? _value.canCallback
          : canCallback // ignore: cast_nullable_to_non_nullable
              as int?,
      gapCount: freezed == gapCount
          ? _value.gapCount
          : gapCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReplyItemModelCopyWith<$Res>
    implements $ReplyItemModelCopyWith<$Res> {
  factory _$$_ReplyItemModelCopyWith(
          _$_ReplyItemModel value, $Res Function(_$_ReplyItemModel) then) =
      __$$_ReplyItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? username,
      int? type,
      dynamic body,
      int? canCallback,
      int? gapCount});
}

/// @nodoc
class __$$_ReplyItemModelCopyWithImpl<$Res>
    extends _$ReplyItemModelCopyWithImpl<$Res, _$_ReplyItemModel>
    implements _$$_ReplyItemModelCopyWith<$Res> {
  __$$_ReplyItemModelCopyWithImpl(
      _$_ReplyItemModel _value, $Res Function(_$_ReplyItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? type = freezed,
    Object? body = freezed,
    Object? canCallback = freezed,
    Object? gapCount = freezed,
  }) {
    return _then(_$_ReplyItemModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
      canCallback: freezed == canCallback
          ? _value.canCallback
          : canCallback // ignore: cast_nullable_to_non_nullable
              as int?,
      gapCount: freezed == gapCount
          ? _value.gapCount
          : gapCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReplyItemModel implements _ReplyItemModel {
  _$_ReplyItemModel(
      {this.id,
      this.username,
      this.type,
      this.body,
      this.canCallback,
      this.gapCount});

  factory _$_ReplyItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReplyItemModelFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final int? type;
  @override
  final dynamic body;
  @override
  final int? canCallback;
  @override
  final int? gapCount;

  @override
  String toString() {
    return 'ReplyItemModel(id: $id, username: $username, type: $type, body: $body, canCallback: $canCallback, gapCount: $gapCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplyItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            (identical(other.canCallback, canCallback) ||
                other.canCallback == canCallback) &&
            (identical(other.gapCount, gapCount) ||
                other.gapCount == gapCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, type,
      const DeepCollectionEquality().hash(body), canCallback, gapCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReplyItemModelCopyWith<_$_ReplyItemModel> get copyWith =>
      __$$_ReplyItemModelCopyWithImpl<_$_ReplyItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReplyItemModelToJson(
      this,
    );
  }
}

abstract class _ReplyItemModel implements ReplyItemModel {
  factory _ReplyItemModel(
      {final int? id,
      final String? username,
      final int? type,
      final dynamic body,
      final int? canCallback,
      final int? gapCount}) = _$_ReplyItemModel;

  factory _ReplyItemModel.fromJson(Map<String, dynamic> json) =
      _$_ReplyItemModel.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  int? get type;
  @override
  dynamic get body;
  @override
  int? get canCallback;
  @override
  int? get gapCount;
  @override
  @JsonKey(ignore: true)
  _$$_ReplyItemModelCopyWith<_$_ReplyItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
