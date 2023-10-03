
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_from_user_model.freezed.dart';
part 'chat_from_user_model.g.dart';

@freezed
class ChatFromUserModel with _$ChatFromUserModel {
  factory ChatFromUserModel({
    required int uid,
    String? username,
    String? avatar,
    String? locPlace,
  }) = _ChatFromUserModel;
	
  factory ChatFromUserModel.fromJson(Map<String, dynamic> json) =>
			_$ChatFromUserModelFromJson(json);
}
