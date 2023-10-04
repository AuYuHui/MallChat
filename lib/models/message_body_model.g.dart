// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageBodyModel _$$_MessageBodyModelFromJson(Map<String, dynamic> json) =>
    _$_MessageBodyModel(
      content: json['content'] as String?,
      reply: json['reply'] == null
          ? null
          : ReplyItemModel.fromJson(json['reply'] as Map<String, dynamic>),
      size: json['size'] as int?,
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      second: json['second'] as int?,
      thumbSize: json['thumbSize'] as int?,
      thumbWidth: json['thumbWidth'] as int?,
      thumbHeight: json['thumbHeight'] as int?,
      thumbUrl: json['thumbUrl'] as String?,
      fileName: json['fileName'] as String?,
    );

Map<String, dynamic> _$$_MessageBodyModelToJson(_$_MessageBodyModel instance) =>
    <String, dynamic>{
      'content': instance.content,
      'reply': instance.reply,
      'size': instance.size,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'second': instance.second,
      'thumbSize': instance.thumbSize,
      'thumbWidth': instance.thumbWidth,
      'thumbHeight': instance.thumbHeight,
      'thumbUrl': instance.thumbUrl,
      'fileName': instance.fileName,
    };
