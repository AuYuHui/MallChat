import 'dart:ffi';

import 'package:easy_refresh/easy_refresh.dart';
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

  final RxBool shrinkWrap = false.obs;

  final listenable = IndicatorStateListenable();

  String cursor = '';
  bool isLoading = false;

  double? _viewportDimension;

  @override
  void onInit() async {
    super.onInit();
    await getChatMessage();
    scrollBottom();

    listenable.addListener(_onHeaderChange);
  }

  @override
  void onClose() {
    scrollController.dispose();
    listenable.removeListener(_onHeaderChange);
    super.onClose();
  }

  // 获取信息
  getChatMessage() async {
    final data = await SessionService()
        .getChatMessage(int.parse(roomId), cursor: cursor);

    if (data.list.isEmpty) return;
    // 需要缓存用户信息
    Set<int> userCacheInfo = Set();

    // 按照时间戳排序
    data.list.sort((a, b) => b.message.sendTime.compareTo(a.message.sendTime));

    List<ChatMessageItemModel> list = List.from(data.list);

    messages.value = [...messages, ...list];

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
    messages.insert(0, data);
    update();
  }

  // 发送信息
  senChatMessage({required int msgType, required Map body}) async {
    final data = await SessionService().postChatSendMesage(
        roomId: int.parse(roomId), msgType: msgType, body: body);
    if (data.message.type == 1) {
      messages.insert(0, data);
    }
    update();
    scrollBottom();
  }

  // 滚动底部
  scrollBottom({double value = 0.0}) {
    // 在页面渲染完成之后获取滚动控制器的高度
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.animateTo(
        value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  void _onHeaderChange() {
    final state = listenable.value;
    if (state != null) {
      final position = state.notifier.position;
      _viewportDimension ??= position.viewportDimension;
      final shrink = state.notifier.position.maxScrollExtent == 0;
      if (shrinkWrap.value != shrink &&
          _viewportDimension == position.viewportDimension) {
        shrinkWrap.value = shrink;
        update();
      }
    }
  }
}
