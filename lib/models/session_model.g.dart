// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionModel _$$_SessionModelFromJson(Map<String, dynamic> json) =>
    _$_SessionModel(
      roomId: json['roomId'] as int,
      type: json['type'] as int,
      hotFlag: json['hotFlag'] as int?,
      text: json['text'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      activeTime: json['activeTime'] as int,
      unreadCount: json['unreadCount'] as int,
    );

Map<String, dynamic> _$$_SessionModelToJson(_$_SessionModel instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'type': instance.type,
      'hotFlag': instance.hotFlag,
      'text': instance.text,
      'name': instance.name,
      'avatar': instance.avatar,
      'activeTime': instance.activeTime,
      'unreadCount': instance.unreadCount,
    };
