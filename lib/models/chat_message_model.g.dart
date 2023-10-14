// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessageModel _$$_ChatMessageModelFromJson(Map<String, dynamic> json) =>
    _$_ChatMessageModel(
      cursor: json['cursor'] as String?,
      isLast: json['isLast'] as bool,
      list: (json['list'] as List<dynamic>)
          .map((e) => ChatMessageItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatMessageModelToJson(_$_ChatMessageModel instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
      'isLast': instance.isLast,
      'list': instance.list,
    };
