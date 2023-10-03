// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionListModel _$$_SessionListModelFromJson(Map<String, dynamic> json) =>
    _$_SessionListModel(
      cursor: json['cursor'] as String?,
      isLast: json['isLast'] as bool,
      list: (json['list'] as List<dynamic>)
          .map((e) => SessionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SessionListModelToJson(_$_SessionListModel instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
      'isLast': instance.isLast,
      'list': instance.list,
    };
