// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageItemModel _$MessageItemModelFromJson(Map<String, dynamic> json) {
  return _MessageItemModel.fromJson(json);
}

/// @nodoc
mixin _$MessageItemModel {
  int get id => throw _privateConstructorUsedError;
  int get roomId => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get sendTime => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageItemModelCopyWith<MessageItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageItemModelCopyWith<$Res> {
  factory $MessageItemModelCopyWith(
          MessageItemModel value, $Res Function(MessageItemModel) then) =
      _$MessageItemModelCopyWithImpl<$Res, MessageItemModel>;
  @useResult
  $Res call({int id, int roomId, int type, int sendTime, dynamic body});
}

/// @nodoc
class _$MessageItemModelCopyWithImpl<$Res, $Val extends MessageItemModel>
    implements $MessageItemModelCopyWith<$Res> {
  _$MessageItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomId = null,
    Object? type = null,
    Object? sendTime = null,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      sendTime: null == sendTime
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as int,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageItemModelCopyWith<$Res>
    implements $MessageItemModelCopyWith<$Res> {
  factory _$$_MessageItemModelCopyWith(
          _$_MessageItemModel value, $Res Function(_$_MessageItemModel) then) =
      __$$_MessageItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int roomId, int type, int sendTime, dynamic body});
}

/// @nodoc
class __$$_MessageItemModelCopyWithImpl<$Res>
    extends _$MessageItemModelCopyWithImpl<$Res, _$_MessageItemModel>
    implements _$$_MessageItemModelCopyWith<$Res> {
  __$$_MessageItemModelCopyWithImpl(
      _$_MessageItemModel _value, $Res Function(_$_MessageItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomId = null,
    Object? type = null,
    Object? sendTime = null,
    Object? body = freezed,
  }) {
    return _then(_$_MessageItemModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      sendTime: null == sendTime
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as int,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageItemModel implements _MessageItemModel {
  _$_MessageItemModel(
      {required this.id,
      required this.roomId,
      required this.type,
      required this.sendTime,
      required this.body});

  factory _$_MessageItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessageItemModelFromJson(json);

  @override
  final int id;
  @override
  final int roomId;
  @override
  final int type;
  @override
  final int sendTime;
  @override
  final dynamic body;

  @override
  String toString() {
    return 'MessageItemModel(id: $id, roomId: $roomId, type: $type, sendTime: $sendTime, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.sendTime, sendTime) ||
                other.sendTime == sendTime) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, roomId, type, sendTime,
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageItemModelCopyWith<_$_MessageItemModel> get copyWith =>
      __$$_MessageItemModelCopyWithImpl<_$_MessageItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageItemModelToJson(
      this,
    );
  }
}

abstract class _MessageItemModel implements MessageItemModel {
  factory _MessageItemModel(
      {required final int id,
      required final int roomId,
      required final int type,
      required final int sendTime,
      required final dynamic body}) = _$_MessageItemModel;

  factory _MessageItemModel.fromJson(Map<String, dynamic> json) =
      _$_MessageItemModel.fromJson;

  @override
  int get id;
  @override
  int get roomId;
  @override
  int get type;
  @override
  int get sendTime;
  @override
  dynamic get body;
  @override
  @JsonKey(ignore: true)
  _$$_MessageItemModelCopyWith<_$_MessageItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
