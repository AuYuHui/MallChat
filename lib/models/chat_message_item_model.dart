
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mallchat/models/chat_from_user_model.dart';
import 'package:mallchat/models/message_item_model.dart';

part 'chat_message_item_model.freezed.dart';
part 'chat_message_item_model.g.dart';

@freezed
class ChatMessageItemModel with _$ChatMessageItemModel {
  factory ChatMessageItemModel({
    required ChatFromUserModel fromUser,
    required MessageItemModel message,
    int? sendTime,
    String? timeBlock,
    bool? loading,
  }) = _ChatMessageItemModel;
	
  factory ChatMessageItemModel.fromJson(Map<String, dynamic> json) =>
			_$ChatMessageItemModelFromJson(json);
}
