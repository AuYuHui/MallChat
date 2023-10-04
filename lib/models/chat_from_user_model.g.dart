// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_from_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatFromUserModel _$$_ChatFromUserModelFromJson(Map<String, dynamic> json) =>
    _$_ChatFromUserModel(
      uid: json['uid'] as int,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      locPlace: json['locPlace'] as String?,
    );

Map<String, dynamic> _$$_ChatFromUserModelToJson(
        _$_ChatFromUserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'username': instance.username,
      'avatar': instance.avatar,
      'locPlace': instance.locPlace,
    };
