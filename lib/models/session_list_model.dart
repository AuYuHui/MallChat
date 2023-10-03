import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mallchat/models/session_model.dart';

part 'session_list_model.freezed.dart';
part 'session_list_model.g.dart';

@freezed
class SessionListModel with _$SessionListModel {
  factory SessionListModel({
    required String? cursor,
    required bool isLast,
    required List<SessionModel> list,
  }) = _SessionListModel;

  factory SessionListModel.fromJson(Map<String, dynamic> json) =>
      _$SessionListModelFromJson(json);
}
