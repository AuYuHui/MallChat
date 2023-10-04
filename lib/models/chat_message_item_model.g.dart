// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessageItemModel _$$_ChatMessageItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChatMessageItemModel(
      fromUser:
          ChatFromUserModel.fromJson(json['fromUser'] as Map<String, dynamic>),
      message:
          MessageItemModel.fromJson(json['message'] as Map<String, dynamic>),
      sendTime: json['sendTime'] as int?,
      timeBlock: json['timeBlock'] as String?,
      loading: json['loading'] as bool?,
    );

Map<String, dynamic> _$$_ChatMessageItemModelToJson(
        _$_ChatMessageItemModel instance) =>
    <String, dynamic>{
      'fromUser': instance.fromUser,
      'message': instance.message,
      'sendTime': instance.sendTime,
      'timeBlock': instance.timeBlock,
      'loading': instance.loading,
    };
