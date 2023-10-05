// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCacheModel _$$_UserCacheModelFromJson(Map<String, dynamic> json) =>
    _$_UserCacheModel(
      uid: json['uid'] as int,
      avatar: json['avatar'] as String,
      name: json['name'] as String,
      locPlace: json['locPlace'] as String?,
      needRefresh: json['needRefresh'] as bool?,
    );

Map<String, dynamic> _$$_UserCacheModelToJson(_$_UserCacheModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'avatar': instance.avatar,
      'name': instance.name,
      'locPlace': instance.locPlace,
      'needRefresh': instance.needRefresh,
    };
