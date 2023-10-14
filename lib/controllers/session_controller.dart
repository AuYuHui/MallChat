import 'package:get/get.dart';
import 'package:mallchat/controllers/user_cache_controller.dart';
import 'package:mallchat/helper/toast.dart';
import 'package:mallchat/models/chat_message_item_model.dart';
import 'package:mallchat/models/session_model.dart';
import 'package:mallchat/services/session.dart';

class SessionController extends GetxController {
  final UserCacheController userCacheController =
      Get.put(UserCacheController());

  // 当前的roomId
  RxString currentRoomID = '1'.obs;

  // 会话列表
  final RxList<SessionModel> sessionList = <SessionModel>[].obs;
  // 聊天信息列表
  late final RxList<ChatMessageItemModel> chatMessageList =
      <ChatMessageItemModel>[].obs;

  // 使用一个Map来管理全局会话，其中roomId作为键，ChatMessageModel对象作为值
  Map<String, RxList<ChatMessageItemModel>> sessionMap =
      <String, RxList<ChatMessageItemModel>>{}.obs;
  String cursor = '';

  // 获取会话列表
  getSessionList() async {
    final data = await SessionService().getSessionList();
    if (data.list.isEmpty) return;

    data.list.forEach((item) {
      sessionMap[item.roomId.toString()] = <ChatMessageItemModel>[].obs;
    });

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

    // 将当前聊天信息缓存到全局
    if (sessionMap[currentRoomID.value] != null) {
      sessionMap[currentRoomID.value] = chatMessageList;
    }

    cursor = data.cursor;

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
}
