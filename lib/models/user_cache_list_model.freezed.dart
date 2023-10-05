// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cache_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCacheListModel _$UserCacheListModelFromJson(Map<String, dynamic> json) {
  return _UserCacheListModel.fromJson(json);
}

/// @nodoc
mixin _$UserCacheListModel {
  List<UserCacheModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCacheListModelCopyWith<UserCacheListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCacheListModelCopyWith<$Res> {
  factory $UserCacheListModelCopyWith(
          UserCacheListModel value, $Res Function(UserCacheListModel) then) =
      _$UserCacheListModelCopyWithImpl<$Res, UserCacheListModel>;
  @useResult
  $Res call({List<UserCacheModel> data});
}

/// @nodoc
class _$UserCacheListModelCopyWithImpl<$Res, $Val extends UserCacheListModel>
    implements $UserCacheListModelCopyWith<$Res> {
  _$UserCacheListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserCacheModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCacheListModelCopyWith<$Res>
    implements $UserCacheListModelCopyWith<$Res> {
  factory _$$_UserCacheListModelCopyWith(_$_UserCacheListModel value,
          $Res Function(_$_UserCacheListModel) then) =
      __$$_UserCacheListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserCacheModel> data});
}

/// @nodoc
class __$$_UserCacheListModelCopyWithImpl<$Res>
    extends _$UserCacheListModelCopyWithImpl<$Res, _$_UserCacheListModel>
    implements _$$_UserCacheListModelCopyWith<$Res> {
  __$$_UserCacheListModelCopyWithImpl(
      _$_UserCacheListModel _value, $Res Function(_$_UserCacheListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_UserCacheListModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserCacheModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCacheListModel implements _UserCacheListModel {
  _$_UserCacheListModel({required final List<UserCacheModel> data})
      : _data = data;

  factory _$_UserCacheListModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserCacheListModelFromJson(json);

  final List<UserCacheModel> _data;
  @override
  List<UserCacheModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UserCacheListModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCacheListModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCacheListModelCopyWith<_$_UserCacheListModel> get copyWith =>
      __$$_UserCacheListModelCopyWithImpl<_$_UserCacheListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCacheListModelToJson(
      this,
    );
  }
}

abstract class _UserCacheListModel implements UserCacheListModel {
  factory _UserCacheListModel({required final List<UserCacheModel> data}) =
      _$_UserCacheListModel;

  factory _UserCacheListModel.fromJson(Map<String, dynamic> json) =
      _$_UserCacheListModel.fromJson;

  @override
  List<UserCacheModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserCacheListModelCopyWith<_$_UserCacheListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
