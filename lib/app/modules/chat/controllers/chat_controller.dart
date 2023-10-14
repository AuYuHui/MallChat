import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mallchat/controllers/session_controller.dart';
import 'package:mallchat/controllers/user_cache_controller.dart';

class ChatController extends GetxController {
  final UserCacheController userCacheController =
      Get.put(UserCacheController());

  final SessionController sessionController = Get.put(SessionController());

  final RxBool emojiShow = false.obs;
  final RxBool moreShow = false.obs;
  final RxBool shrinkWrap = false.obs;

  final ScrollController scrollController = ScrollController();
  final listenable = IndicatorStateListenable();
  final FocusNode focusNode = FocusNode();

  double? _viewportDimension;

  @override
  void onInit() async {
    super.onInit();
    await sessionController.getChatMessageList();
    scrollBottom();

    listenable.addListener(_onHeaderChange);

    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        emojiShow.value = false;
        moreShow.value = false;
      }
    });
  }

  @override
  void onClose() {
    scrollController.dispose();
    listenable.removeListener(_onHeaderChange);
    super.onClose();
  }

  // 发送信息
  senChatMessage({required int msgType, required Map body}) async {
    sessionController.senChatMessage(msgType: msgType, body: body);
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
      }
    }
  }
}
