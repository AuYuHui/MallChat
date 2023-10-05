import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mallchat/models/user_cache_model.dart';

part 'user_cache_list_model.freezed.dart';
part 'user_cache_list_model.g.dart';

@freezed
class UserCacheListModel with _$UserCacheListModel {
  factory UserCacheListModel({required List<UserCacheModel> data}) =
      _UserCacheListModel;

  factory UserCacheListModel.fromJson(Map<String, dynamic> json) =>
      _$UserCacheListModelFromJson(json);
}
