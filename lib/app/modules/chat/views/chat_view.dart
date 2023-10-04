import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;

import 'package:get/get.dart';
import 'package:mallchat/app/config/colors.dart';
import 'package:mallchat/app/modules/chat/component/circular_icon.dart';
import 'package:mallchat/app/modules/chat/component/message_item.dart';
import 'package:mallchat/app/modules/chat/controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  final TextEditingController _textEditingController = TextEditingController();
  final ChatController chatController = Get.put(ChatController());

  ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = Get.parameters['title'] ?? '用户';

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: lightColor.defaultText,
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() => ListView.builder(
                  controller: chatController.scrollController,
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  itemCount: chatController.messages.length,
                  itemBuilder: (_, index) => MessageItem(
                    message: chatController.messages[index],
                  ),
                )),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            constraints: const BoxConstraints(minWidth: 55.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                CircularIcon(
                  icon: Icons.sentiment_very_satisfied,
                  onPressed: () => _showEmojiPicker(),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: lightColor.tabBarBg, // 设置背景颜色
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(4),
                        right: Radius.circular(4),
                      ),
                    ),
                    constraints: const BoxConstraints(minHeight: 45),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      controller: _textEditingController,
                      // keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.send, // 将发送按钮更改为 "发送"：
                      maxLength: 200, // 最多 200个字
                      maxLines: null, // 可以换行
                      onSubmitted: _handleSubmitted,
                      decoration: const InputDecoration(
                          border: InputBorder.none, counterText: ''),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                CircularIcon(
                  icon: Icons.keyboard_alt_outlined,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 8,
                ),
                CircularIcon(
                  icon: Icons.add,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
          Obx(() => Offstage(
                offstage: chatController.emojiShow.value,
                child: SizedBox(
                  height: 270,
                  child: EmojiPicker(
                    textEditingController: _textEditingController,
                    onBackspacePressed: _onBackspacePressed,
                    config: Config(
                      columns: 7,
                      // Issue: https://github.com/flutter/flutter/issues/28894
                      emojiSizeMax: 32 *
                          (foundation.defaultTargetPlatform ==
                                  TargetPlatform.iOS
                              ? 1.30
                              : 1.0),
                      verticalSpacing: 0,
                      horizontalSpacing: 0,
                      gridPadding: EdgeInsets.zero,
                      initCategory: Category.RECENT,
                      bgColor: const Color(0xFFF2F2F2),
                      indicatorColor: Colors.blue,
                      iconColor: Colors.grey,
                      iconColorSelected: Colors.blue,
                      backspaceColor: Colors.blue,
                      skinToneDialogBgColor: Colors.white,
                      skinToneIndicatorColor: Colors.grey,
                      enableSkinTones: true,
                      recentTabBehavior: RecentTabBehavior.RECENT,
                      recentsLimit: 28,
                      replaceEmojiOnLimitExceed: false,
                      noRecents: const Text(
                        'No Recents',
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                        textAlign: TextAlign.center,
                      ),
                      loadingIndicator: const SizedBox.shrink(),
                      tabIndicatorAnimDuration: kTabScrollDuration,
                      categoryIcons: const CategoryIcons(),
                      buttonMode: ButtonMode.MATERIAL,
                      checkPlatformCompatibility: true,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  _onBackspacePressed() {
    _textEditingController
      ..text = _textEditingController.text.characters.toString()
      ..selection = TextSelection.fromPosition(
          TextPosition(offset: _textEditingController.text.length));
  }

  void _handleSubmitted(String value) {}

  _showEmojiPicker() {}
}
