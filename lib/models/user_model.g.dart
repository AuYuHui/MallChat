// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int,
      avatar: json['avatar'] as String,
      name: json['name'] as String,
      sex: json['sex'] as int,
      modifyNameChance: json['modifyNameChance'] as int,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
      'name': instance.name,
      'sex': instance.sex,
      'modifyNameChance': instance.modifyNameChance,
    };
