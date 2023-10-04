// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) {
  return _ChatMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageModel {
  String get cursor => throw _privateConstructorUsedError;
  bool get isLast => throw _privateConstructorUsedError;
  List<ChatMessageItemModel> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageModelCopyWith<ChatMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageModelCopyWith<$Res> {
  factory $ChatMessageModelCopyWith(
          ChatMessageModel value, $Res Function(ChatMessageModel) then) =
      _$ChatMessageModelCopyWithImpl<$Res, ChatMessageModel>;
  @useResult
  $Res call({String cursor, bool isLast, List<ChatMessageItemModel> list});
}

/// @nodoc
class _$ChatMessageModelCopyWithImpl<$Res, $Val extends ChatMessageModel>
    implements $ChatMessageModelCopyWith<$Res> {
  _$ChatMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = null,
    Object? isLast = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      cursor: null == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatMessageModelCopyWith<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  factory _$$_ChatMessageModelCopyWith(
          _$_ChatMessageModel value, $Res Function(_$_ChatMessageModel) then) =
      __$$_ChatMessageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cursor, bool isLast, List<ChatMessageItemModel> list});
}

/// @nodoc
class __$$_ChatMessageModelCopyWithImpl<$Res>
    extends _$ChatMessageModelCopyWithImpl<$Res, _$_ChatMessageModel>
    implements _$$_ChatMessageModelCopyWith<$Res> {
  __$$_ChatMessageModelCopyWithImpl(
      _$_ChatMessageModel _value, $Res Function(_$_ChatMessageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = null,
    Object? isLast = null,
    Object? list = null,
  }) {
    return _then(_$_ChatMessageModel(
      cursor: null == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatMessageModel implements _ChatMessageModel {
  _$_ChatMessageModel(
      {required this.cursor, required this.isLast, required this.list});

  factory _$_ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatMessageModelFromJson(json);

  @override
  final String cursor;
  @override
  final bool isLast;
  @override
  final List<ChatMessageItemModel> list;

  @override
  String toString() {
    return 'ChatMessageModel(cursor: $cursor, isLast: $isLast, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMessageModel &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cursor, isLast, const DeepCollectionEquality().hash(list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatMessageModelCopyWith<_$_ChatMessageModel> get copyWith =>
      __$$_ChatMessageModelCopyWithImpl<_$_ChatMessageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatMessageModelToJson(
      this,
    );
  }
}

abstract class _ChatMessageModel implements ChatMessageModel {
  factory _ChatMessageModel(
      {required final String cursor,
      required final bool isLast,
      required final List<ChatMessageItemModel> list}) = _$_ChatMessageModel;

  factory _ChatMessageModel.fromJson(Map<String, dynamic> json) =
      _$_ChatMessageModel.fromJson;

  @override
  String get cursor;
  @override
  bool get isLast;
  @override
  List<ChatMessageItemModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ChatMessageModelCopyWith<_$_ChatMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
