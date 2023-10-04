// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageItemModel _$$_MessageItemModelFromJson(Map<String, dynamic> json) =>
    _$_MessageItemModel(
      id: json['id'] as int,
      roomId: json['roomId'] as int,
      type: json['type'] as int,
      sendTime: json['sendTime'] as int,
      body: json['body'],
    );

Map<String, dynamic> _$$_MessageItemModelToJson(_$_MessageItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomId': instance.roomId,
      'type': instance.type,
      'sendTime': instance.sendTime,
      'body': instance.body,
    };
