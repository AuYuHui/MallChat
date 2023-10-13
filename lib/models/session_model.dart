import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_model.freezed.dart';
part 'session_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SessionModel with _$SessionModel {
  factory SessionModel({
    required int roomId,
    required int type,
    int? hotFlag,
    required String text,
    required String name,
    required String avatar,
    required int activeTime,
    required int unreadCount,
  }) = _SessionModel;

  factory SessionModel.fromJson(Map<String, dynamic> json) =>
      _$SessionModelFromJson(json);
}
