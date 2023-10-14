import 'package:get/get.dart';
import 'package:mallchat/controllers/user_cache_controller.dart';
import 'package:mallchat/helper/toast.dart';
import 'package:mallchat/models/chat_message_item_model.dart';
import 'package:mallchat/models/revoked_message.dart';
import 'package:mallchat/models/session_model.dart';
import 'package:mallchat/services/session.dart';

class SessionController extends GetxController {
  final UserCacheController userCacheController =
      Get.put(UserCacheController());

  // 当前的roomId
  RxString currentRoomID = ''.obs;

  // 会话列表
  final RxList<SessionModel> sessionList = <SessionModel>[].obs;
  // 聊天信息列表
  late RxList<ChatMessageItemModel> chatMessageList =
      <ChatMessageItemModel>[].obs;

  String cursor = '';

  // 获取会话列表
  getSessionList() async {
    final data = await SessionService().getSessionList();
    if (data.list.isEmpty) return;

    sessionList.value = data.list;
  }

  // 删除会话
  removeSession(int index) {
    final current = sessionList[index];

    if (current.roomId == 1) return;

    if (index >= 0 && index < sessionList.length) {
      sessionList.removeAt(index);
      showSuccessToast('本地删除成功');
    }
  }

  // 获取会话聊天
  getChatMessageList() async {
    final data = await SessionService()
        .getChatMessage(int.parse(currentRoomID.value), cursor: cursor);

    if (data.list.isEmpty) return;
    // 需要缓存用户信息
    Set<int> userCacheInfo = Set();

    // 按照时间戳排序
    data.list.sort((a, b) => b.message.sendTime.compareTo(a.message.sendTime));

    List<ChatMessageItemModel> list = List.from(data.list);

    chatMessageList.value = [...chatMessageList, ...list];

    if (data.cursor != null) {
      cursor = data.cursor!;
    }

    data.list.forEach((item) {
      userCacheInfo.add(item.fromUser.uid);
    });
    // 获取用户信息
    await userCacheController.getUserInfoBatch([...userCacheInfo]);
  }

  // 发送信息
  senChatMessage({required int msgType, required Map body}) async {
    await SessionService().postChatSendMesage(
        roomId: int.parse(currentRoomID.value), msgType: msgType, body: body);
  }

  // 添加信息到列表
  addChatMessage(ChatMessageItemModel data) {
    chatMessageList.insert(0, data);
  }

  // 更新撤回信息
  updateRecallMessage(RevokedMessage data) {
    final index = chatMessageList.indexWhere((element) =>
        element.message.id == data.msgId &&
        element.message.roomId == data.roomId);

    print(index);
    if (index != -1) {
      // 获取缓存用户信息
      var cacheUser = userCacheController.userCacheMap[data.recallUid];
      var message = chatMessageList[index];
      // 如果撤回者的 id 不等于消息发送人的 id, 或者你本人就是管理员，那么显示管理员撤回的。
      if (data.recallUid != message.fromUser.uid) {
        chatMessageList[index] = chatMessageList[index].copyWith(
            message: chatMessageList[index]
                .message
                .copyWith(body: '管理员"${cacheUser?.name}"撤回了一条成员消息', type: 2));
      } else {
        chatMessageList[index] = chatMessageList[index].copyWith(
            message: chatMessageList[index]
                .message
                .copyWith(body: '"${cacheUser?.name}"撤回了一条消息', type: 2));
      }
    }
  }
}
