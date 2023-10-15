import 'package:easy_refresh/easy_refresh.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';
import 'package:mallchat/app/config/colors.dart';
import 'package:mallchat/app/modules/chat/component/chat_more.dart';
import 'package:mallchat/app/modules/chat/component/circular_icon.dart';
import 'package:mallchat/app/modules/chat/component/message_item.dart';
import 'package:mallchat/app/modules/chat/controllers/chat_controller.dart';
import 'package:mallchat/controllers/session_controller.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class ChatView extends GetView<ChatController> {
  final TextEditingController _textEditingController = TextEditingController();
  final ChatController chatController = Get.put(ChatController());
  final SessionController sessionController = Get.put(SessionController());

  List<AssetEntity> assets = <AssetEntity>[];
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
      body: KeyboardDismissOnTap(
        child: Column(
          children: [
            Expanded(
              child: EasyRefresh(
                clipBehavior: Clip.none,
                onLoad: () {
                  return sessionController.getChatMessageList();
                },
                header: ListenerHeader(
                  listenable: chatController.listenable,
                  triggerOffset: 100000,
                  clamping: false,
                ),
                footer: BuilderFooter(
                    triggerOffset: 40,
                    clamping: false,
                    position: IndicatorPosition.above,
                    infiniteOffset: null,
                    processedDuration: Duration.zero,
                    builder: (context, state) {
                      return Stack(
                        children: [
                          SizedBox(
                            height: state.offset,
                            width: double.infinity,
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 40,
                              child: const SpinKitCircle(
                                size: 24,
                                color: lightColor.tabBarSelectText,
                              ),
                            ),
                          )
                        ],
                      );
                    }),
                child: Obx(() => CustomScrollView(
                      reverse: true,
                      controller: chatController.scrollController,
                      shrinkWrap: chatController.shrinkWrap.value,
                      clipBehavior: Clip.none,
                      slivers: [
                        SliverPadding(
                          padding: const EdgeInsets.all(15.0),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                return MessageItem(
                                  message:
                                      sessionController.chatMessageList[index],
                                );
                              },
                              childCount:
                                  sessionController.chatMessageList.length,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(bottom: 10),
              constraints: const BoxConstraints(minWidth: 55.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  CircularIcon(
                    icon: Icons.sentiment_very_satisfied,
                    onPressed: _showEmojiPicker,
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
                        onTap: () {
                          if (chatController.focusNode.hasFocus) {
                            chatController.emojiShow.value = true;
                          }
                        },
                        controller: _textEditingController,
                        textInputAction: TextInputAction.send,
                        // 将发送按钮更改为 "发送"：
                        maxLength: 200,
                        // 最多 200个字
                        maxLines: null,
                        // 可以换行
                        onSubmitted: _handleSubmitted,
                        focusNode: chatController.focusNode,
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
                    onPressed: () {
                      chatController.moreShow.value =
                          !chatController.moreShow.value;
                      chatController.emojiShow.value = false;
                      chatController.focusNode.unfocus();
                    },
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
            Obx(() => Visibility(
                  visible: chatController.emojiShow.value,
                  child: SizedBox(
                    height: 270,
                    child: EmojiPicker(
                      textEditingController: _textEditingController,
                      onBackspacePressed: _onBackspacePressed,
                      config: Config(
                        columns: 7,
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
                )),
            Obx(() => Visibility(
                visible: chatController.moreShow.value,
                child: ChatMore(
                    callBack: (value) => _handleMoreItemTap(context, value))))
          ],
        ),
      ),
    );
  }

  _onBackspacePressed() {
    _textEditingController
      ..text = _textEditingController.text.characters.toString()
      ..selection = TextSelection.fromPosition(
          TextPosition(offset: _textEditingController.text.length));
  }

  void _handleSubmitted(String value) {
    if (value.trim() == '') return;
    chatController.senChatMessage(msgType: 1, body: {'content': value});
    // 发送后清空输入框
    _textEditingController.clear();
  }

  _showEmojiPicker() {
    chatController.emojiShow.value = !chatController.emojiShow.value;
    chatController.moreShow.value = false;
    chatController.focusNode.unfocus();
  }

  // 点击更多
  _handleMoreItemTap(BuildContext context, String value) async {
    if (value == 'photo') {
      AssetPicker.pickAssets(context,
          pickerConfig: AssetPickerConfig(
            maxAssets: 9,
            pageSize: 320,
            selectedAssets: assets,
          ));
    }
  }
}
