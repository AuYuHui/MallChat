
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mallchat/models/reply_item_model.dart';

part 'message_body_model.freezed.dart';
part 'message_body_model.g.dart';

@freezed
class MessageBodyModel with _$MessageBodyModel {
  factory MessageBodyModel({
    String? content,
    ReplyItemModel? reply,
    int? size,
    String? url,
    int? width,
    int? height,
    int? second,
    int? thumbSize,
    int? thumbWidth,
    int? thumbHeight,
    String? thumbUrl,
    String? fileName,
  }) = _MessageBodyModel;
	
  factory MessageBodyModel.fromJson(Map<String, dynamic> json) =>
			_$MessageBodyModelFromJson(json);
}
