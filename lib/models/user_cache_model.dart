import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_cache_model.freezed.dart';
part 'user_cache_model.g.dart';

@freezed
class UserCacheModel with _$UserCacheModel {
  factory UserCacheModel({
    required int uid,
    required String avatar,
    required String name,
    String? locPlace,
    bool? needRefresh,
  }) = _UserCacheModel;

  factory UserCacheModel.fromJson(Map<String, dynamic> json) =>
      _$UserCacheModelFromJson(json);
}
