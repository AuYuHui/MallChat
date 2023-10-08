import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mallchat/controllers/user_cache_controller.dart';
import 'package:mallchat/models/chat_message_item_model.dart';
import 'package:mallchat/services/session.dart';

class ChatController extends GetxController {
  final UserCacheController userCacheController =
      Get.put(UserCacheController());

  final RxBool emojiShow = true.obs;
  final ScrollController scrollController = ScrollController();
  late final RxList<ChatMessageItemModel> messages =
      <ChatMessageItemModel>[].obs;
  final roomId = Get.parameters['roomId'] ?? '1';

  String cursor = '';
  bool isLoading = false;

  @override
  void onInit() async {
    super.onInit();
    await getChatMessage();
    scrollBottom(value: 35);

    scrollController.addListener(() {
      // 滑动到顶部
      if (scrollController.position.pixels <= 50 && !isLoading) {
        isLoading = true;
        getChatMessage();
      }
    });
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  // 获取信息
  getChatMessage() async {
    final data = await SessionService()
        .getChatMessage(int.parse(roomId), cursor: cursor);

    if (data.list.isEmpty) return;
    // 需要缓存用户信息
    Set<int> userCacheInfo = Set();
    messages.value = [...data.list, ...messages];

    cursor = data.cursor;
    isLoading = false;

    data.list.forEach((item) {
      userCacheInfo.add(item.fromUser.uid);
    });
    await userCacheController.getUserInfoBatch([...userCacheInfo]);
    update();
  }

  // 添加信息到列表
  addChatMessage(ChatMessageItemModel data) {
    messages.add(data);
    update();
  }

  // 发送信息
  senChatMessage({required int msgType, required Map body}) async {
    final data = await SessionService().postChatSendMesage(
        roomId: int.parse(roomId), msgType: msgType, body: body);
    if (data.message.type == 1) {
      messages.add(data);
    }
    update();
    scrollBottom();
  }

  // 滚动底部
  scrollBottom({int value = 0}) {
    // 在页面渲染完成之后获取滚动控制器的高度
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent + value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }
}
