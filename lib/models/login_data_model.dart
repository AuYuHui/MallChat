
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_data_model.freezed.dart';
part 'login_data_model.g.dart';

@freezed
class LoginDataModel with _$LoginDataModel {
  factory LoginDataModel({
    String? loginUrl
  }) = _LoginDataModel;
	
  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
			_$LoginDataModelFromJson(json);
}
