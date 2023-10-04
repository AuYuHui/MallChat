import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mallchat/models/chat_message_item_model.dart';
import 'package:mallchat/services/session.dart';

class ChatController extends GetxController {
  //TODO: Implement ChatController
  final RxBool emojiShow = true.obs;
  final ScrollController scrollController = ScrollController();
  final RxList<ChatMessageItemModel> messages = <ChatMessageItemModel>[].obs;

  @override
  void onInit() async {
    final roomId = Get.parameters['roomId'] ?? '1';
    await getChatMessage(int.parse(roomId));

    // 在页面渲染完成之后获取滚动控制器的高度
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print("maxScrollExtent${scrollController.position.maxScrollExtent}");
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
    super.onInit();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  getChatMessage(int roomId) async {
    final data = await SessionService().getChatMessage(roomId);
    messages.value = data.list;
    update();
  }
}
