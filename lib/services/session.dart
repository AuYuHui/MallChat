import 'dart:convert';

import 'package:mallchat/helper/http.dart';
import 'package:mallchat/models/session_list_model.dart';
import 'package:mallchat/services/api.dart';

class SessionService {
  Future<SessionListModel> getSessionList() async {
    final data = await HttpClient().get(Api.sessionList);
    final sessionList = SessionListModel.fromJson(data.data['data']);
    return sessionList;
  }
}
