// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cache_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCacheListModel _$$_UserCacheListModelFromJson(
        Map<String, dynamic> json) =>
    _$_UserCacheListModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => UserCacheModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserCacheListModelToJson(
        _$_UserCacheListModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
