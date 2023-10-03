
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mallchat/enums/index.dart';

part 'reply_item_model.freezed.dart';
part 'reply_item_model.g.dart';

@freezed
class ReplyItemModel with _$ReplyItemModel {
  factory ReplyItemModel({
    int? id,
    String? username,
    MessageEnum? type,
    dynamic? body,
    int? canCallback,
    int? gapCount
  }) = _ReplyItemModel;
	
  factory ReplyItemModel.fromJson(Map<String, dynamic> json) =>
			_$ReplyItemModelFromJson(json);
}
