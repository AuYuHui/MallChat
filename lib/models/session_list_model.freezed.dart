// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionListModel _$SessionListModelFromJson(Map<String, dynamic> json) {
  return _SessionListModel.fromJson(json);
}

/// @nodoc
mixin _$SessionListModel {
  String? get cursor => throw _privateConstructorUsedError;
  bool get isLast => throw _privateConstructorUsedError;
  List<SessionModel> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionListModelCopyWith<SessionListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionListModelCopyWith<$Res> {
  factory $SessionListModelCopyWith(
          SessionListModel value, $Res Function(SessionListModel) then) =
      _$SessionListModelCopyWithImpl<$Res, SessionListModel>;
  @useResult
  $Res call({String? cursor, bool isLast, List<SessionModel> list});
}

/// @nodoc
class _$SessionListModelCopyWithImpl<$Res, $Val extends SessionListModel>
    implements $SessionListModelCopyWith<$Res> {
  _$SessionListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
    Object? isLast = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SessionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionListModelCopyWith<$Res>
    implements $SessionListModelCopyWith<$Res> {
  factory _$$_SessionListModelCopyWith(
          _$_SessionListModel value, $Res Function(_$_SessionListModel) then) =
      __$$_SessionListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cursor, bool isLast, List<SessionModel> list});
}

/// @nodoc
class __$$_SessionListModelCopyWithImpl<$Res>
    extends _$SessionListModelCopyWithImpl<$Res, _$_SessionListModel>
    implements _$$_SessionListModelCopyWith<$Res> {
  __$$_SessionListModelCopyWithImpl(
      _$_SessionListModel _value, $Res Function(_$_SessionListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
    Object? isLast = null,
    Object? list = null,
  }) {
    return _then(_$_SessionListModel(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SessionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionListModel implements _SessionListModel {
  _$_SessionListModel(
      {required this.cursor,
      required this.isLast,
      required final List<SessionModel> list})
      : _list = list;

  factory _$_SessionListModel.fromJson(Map<String, dynamic> json) =>
      _$$_SessionListModelFromJson(json);

  @override
  final String? cursor;
  @override
  final bool isLast;
  final List<SessionModel> _list;
  @override
  List<SessionModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'SessionListModel(cursor: $cursor, isLast: $isLast, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionListModel &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cursor, isLast, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionListModelCopyWith<_$_SessionListModel> get copyWith =>
      __$$_SessionListModelCopyWithImpl<_$_SessionListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionListModelToJson(
      this,
    );
  }
}

abstract class _SessionListModel implements SessionListModel {
  factory _SessionListModel(
      {required final String? cursor,
      required final bool isLast,
      required final List<SessionModel> list}) = _$_SessionListModel;

  factory _SessionListModel.fromJson(Map<String, dynamic> json) =
      _$_SessionListModel.fromJson;

  @override
  String? get cursor;
  @override
  bool get isLast;
  @override
  List<SessionModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_SessionListModelCopyWith<_$_SessionListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
