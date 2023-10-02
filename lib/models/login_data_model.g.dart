// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginDataModel _$$_LoginDataModelFromJson(Map<String, dynamic> json) =>
    _$_LoginDataModel(
      loginUrl: json['loginUrl'] as String?,
      uid: json['uid'] as int?,
      avatar: json['avatar'] as String?,
      token: json['token'] as String?,
      power: json['power'] as int?,
    );

Map<String, dynamic> _$$_LoginDataModelToJson(_$_LoginDataModel instance) =>
    <String, dynamic>{
      'loginUrl': instance.loginUrl,
      'uid': instance.uid,
      'avatar': instance.avatar,
      'token': instance.token,
      'power': instance.power,
    };
