
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mallchat/enums/index.dart';

part 'message_item_model.freezed.dart';
part 'message_item_model.g.dart';

@freezed
class MessageItemModel with _$MessageItemModel {
  factory MessageItemModel({
    required int id,
    required int roomId,
    required MessageEnum type,
    required int sendTime,
    required String body,
  }) = _MessageItemModel;
	
  factory MessageItemModel.fromJson(Map<String, dynamic> json) =>
			_$MessageItemModelFromJson(json);
}
