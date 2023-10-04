// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReplyItemModel _$$_ReplyItemModelFromJson(Map<String, dynamic> json) =>
    _$_ReplyItemModel(
      id: json['id'] as int?,
      username: json['username'] as String?,
      type: json['type'] as int?,
      body: json['body'],
      canCallback: json['canCallback'] as int?,
      gapCount: json['gapCount'] as int?,
    );

Map<String, dynamic> _$$_ReplyItemModelToJson(_$_ReplyItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'type': instance.type,
      'body': instance.body,
      'canCallback': instance.canCallback,
      'gapCount': instance.gapCount,
    };
