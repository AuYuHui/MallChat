import 'package:get/get.dart';
import 'package:mallchat/helper/toast.dart';
import 'package:mallchat/models/chat_message_model.dart';
import 'package:mallchat/models/session_model.dart';
import 'package:mallchat/services/session.dart';

class SessionController extends GetxController {
  // 使用一个Map来管理全局会话，其中roomId作为键，ChatMessageModel对象作为值
  RxMap<String, ChatMessageModel> sessionMap = <String, ChatMessageModel>{}.obs;

  // 会话列表
  final RxList<SessionModel> sessionList = <SessionModel>[].obs;

  // 获取会话列表
  getSessionList() async {
    final data = await SessionService().getSessionList();
    sessionList.value = data.list;
  }

  // 删除会话
  removeSession(int index) {
    final current = sessionList[index];

    if (current.roomId == 1) return;

    if (index >= 0 && index < sessionList.length) {
      sessionList.removeAt(index);
      showSuccessToast('删除成功');
    }
  }
}
