import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mallchat/models/login_data_model.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  factory LoginModel({required int type, LoginDataModel? data}) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
