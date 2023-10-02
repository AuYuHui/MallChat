
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required int uid,
    required String avatar,
    required String token,
    required int power,
  }) = _UserModel;
	
  factory UserModel.fromJson(Map<String, dynamic> json) =>
			_$UserModelFromJson(json);
}
