import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mallchat/models/chat_message_item_model.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ChatMessageModel with _$ChatMessageModel {
  factory ChatMessageModel({
    required String cursor,
    required bool isLast,
    required List<ChatMessageItemModel> list,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}
