import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_item_model.freezed.dart';
part 'message_item_model.g.dart';

@freezed
class MessageItemModel with _$MessageItemModel {
  factory MessageItemModel({
    required int id,
    required int roomId,
    required int type,
    required int sendTime,
    required dynamic body,
  }) = _MessageItemModel;

  factory MessageItemModel.fromJson(Map<String, dynamic> json) =>
      _$MessageItemModelFromJson(json);
}
