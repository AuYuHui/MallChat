import 'dart:convert';

import 'package:mallchat/helper/http.dart';
import 'package:mallchat/models/chat_message_item_model.dart';
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
      {int pageSize = 20, String? cursor}) async {
    final data = await HttpClient().get(Api.chatMessage,
        queryParameters: {'roomId': roomId, 'pageSize': pageSize, 'cursor': cursor});

    final chatMessage = ChatMessageModel.fromJson(data.data['data']);
    return chatMessage;
  }

  Future<ChatMessageItemModel> postChatSendMesage(
      {required int roomId, required int msgType, required Map body}) async {
    final data = await HttpClient().post(
      Api.chatSendMessage,
      formData: {'roomId': roomId, 'msgType': msgType, 'body': body},
    );
    final jsonData = ChatMessageItemModel.fromJson(data.data['data']);

    return jsonData;
  }
}
