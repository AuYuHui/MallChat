import 'dart:convert';

import 'package:mallchat/helper/http.dart';
import 'package:mallchat/models/chat_message_model.dart';
import 'package:mallchat/models/session_list_model.dart';
import 'package:mallchat/services/api.dart';

class SessionService {
  // 获取会话列表
  Future<SessionListModel> getSessionList() async {
    final data = await HttpClient().get(Api.sessionList);
    final sessionList = SessionListModel.fromJson(data.data['data']);
    return sessionList;
  }

  // 获取会话消息列表
  Future<ChatMessageModel> getChatMessage(int roomId,
      {int pageSize = 20}) async {
    final data = await HttpClient().get(Api.chatMessage,
        queryParameters: {'roomId': roomId, 'pageSize': pageSize});

    final chatMessage = ChatMessageModel.fromJson(data.data['data']);
    return chatMessage;
  }

  Future postChatSendMesage(
      {required int roomId, required int msgType, required Map body}) async {
    final data = await HttpClient().post(
      Api.chatSendMessage,
      formData: {'roomId': roomId, 'msgType': msgType, 'body': body},
    );
  }
}
