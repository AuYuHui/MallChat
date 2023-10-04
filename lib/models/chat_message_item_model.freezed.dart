// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessageItemModel _$ChatMessageItemModelFromJson(Map<String, dynamic> json) {
  return _ChatMessageItemModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageItemModel {
  ChatFromUserModel get fromUser => throw _privateConstructorUsedError;
  MessageItemModel get message => throw _privateConstructorUsedError;
  int? get sendTime => throw _privateConstructorUsedError;
  String? get timeBlock => throw _privateConstructorUsedError;
  bool? get loading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageItemModelCopyWith<ChatMessageItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageItemModelCopyWith<$Res> {
  factory $ChatMessageItemModelCopyWith(ChatMessageItemModel value,
          $Res Function(ChatMessageItemModel) then) =
      _$ChatMessageItemModelCopyWithImpl<$Res, ChatMessageItemModel>;
  @useResult
  $Res call(
      {ChatFromUserModel fromUser,
      MessageItemModel message,
      int? sendTime,
      String? timeBlock,
      bool? loading});

  $ChatFromUserModelCopyWith<$Res> get fromUser;
  $MessageItemModelCopyWith<$Res> get message;
}

/// @nodoc
class _$ChatMessageItemModelCopyWithImpl<$Res,
        $Val extends ChatMessageItemModel>
    implements $ChatMessageItemModelCopyWith<$Res> {
  _$ChatMessageItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromUser = null,
    Object? message = null,
    Object? sendTime = freezed,
    Object? timeBlock = freezed,
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      fromUser: null == fromUser
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as ChatFromUserModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageItemModel,
      sendTime: freezed == sendTime
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as int?,
      timeBlock: freezed == timeBlock
          ? _value.timeBlock
          : timeBlock // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatFromUserModelCopyWith<$Res> get fromUser {
    return $ChatFromUserModelCopyWith<$Res>(_value.fromUser, (value) {
      return _then(_value.copyWith(fromUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageItemModelCopyWith<$Res> get message {
    return $MessageItemModelCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatMessageItemModelCopyWith<$Res>
    implements $ChatMessageItemModelCopyWith<$Res> {
  factory _$$_ChatMessageItemModelCopyWith(_$_ChatMessageItemModel value,
          $Res Function(_$_ChatMessageItemModel) then) =
      __$$_ChatMessageItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatFromUserModel fromUser,
      MessageItemModel message,
      int? sendTime,
      String? timeBlock,
      bool? loading});

  @override
  $ChatFromUserModelCopyWith<$Res> get fromUser;
  @override
  $MessageItemModelCopyWith<$Res> get message;
}

/// @nodoc
class __$$_ChatMessageItemModelCopyWithImpl<$Res>
    extends _$ChatMessageItemModelCopyWithImpl<$Res, _$_ChatMessageItemModel>
    implements _$$_ChatMessageItemModelCopyWith<$Res> {
  __$$_ChatMessageItemModelCopyWithImpl(_$_ChatMessageItemModel _value,
      $Res Function(_$_ChatMessageItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromUser = null,
    Object? message = null,
    Object? sendTime = freezed,
    Object? timeBlock = freezed,
    Object? loading = freezed,
  }) {
    return _then(_$_ChatMessageItemModel(
      fromUser: null == fromUser
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as ChatFromUserModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageItemModel,
      sendTime: freezed == sendTime
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as int?,
      timeBlock: freezed == timeBlock
          ? _value.timeBlock
          : timeBlock // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatMessageItemModel implements _ChatMessageItemModel {
  _$_ChatMessageItemModel(
      {required this.fromUser,
      required this.message,
      this.sendTime,
      this.timeBlock,
      this.loading});

  factory _$_ChatMessageItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatMessageItemModelFromJson(json);

  @override
  final ChatFromUserModel fromUser;
  @override
  final MessageItemModel message;
  @override
  final int? sendTime;
  @override
  final String? timeBlock;
  @override
  final bool? loading;

  @override
  String toString() {
    return 'ChatMessageItemModel(fromUser: $fromUser, message: $message, sendTime: $sendTime, timeBlock: $timeBlock, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMessageItemModel &&
            (identical(other.fromUser, fromUser) ||
                other.fromUser == fromUser) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.sendTime, sendTime) ||
                other.sendTime == sendTime) &&
            (identical(other.timeBlock, timeBlock) ||
                other.timeBlock == timeBlock) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fromUser, message, sendTime, timeBlock, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatMessageItemModelCopyWith<_$_ChatMessageItemModel> get copyWith =>
      __$$_ChatMessageItemModelCopyWithImpl<_$_ChatMessageItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatMessageItemModelToJson(
      this,
    );
  }
}

abstract class _ChatMessageItemModel implements ChatMessageItemModel {
  factory _ChatMessageItemModel(
      {required final ChatFromUserModel fromUser,
      required final MessageItemModel message,
      final int? sendTime,
      final String? timeBlock,
      final bool? loading}) = _$_ChatMessageItemModel;

  factory _ChatMessageItemModel.fromJson(Map<String, dynamic> json) =
      _$_ChatMessageItemModel.fromJson;

  @override
  ChatFromUserModel get fromUser;
  @override
  MessageItemModel get message;
  @override
  int? get sendTime;
  @override
  String? get timeBlock;
  @override
  bool? get loading;
  @override
  @JsonKey(ignore: true)
  _$$_ChatMessageItemModelCopyWith<_$_ChatMessageItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
