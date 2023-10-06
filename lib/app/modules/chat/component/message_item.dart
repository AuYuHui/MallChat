import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mallchat/app/config/colors.dart';
import 'package:mallchat/controllers/user_cache_controller.dart';
import 'package:mallchat/controllers/user_controller.dart';
import 'package:mallchat/models/chat_message_item_model.dart';
import 'package:mallchat/models/message_body_model.dart';

class MessageItem extends StatelessWidget {
  final ChatMessageItemModel message;

  final UserController userController = Get.find<UserController>();
  final UserCacheController userCacheController =
      Get.find<UserCacheController>();

  MessageItem({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final isMe = userController.userInfo.value.id == message.fromUser.uid;
    return Container(
      constraints: const BoxConstraints(maxWidth: 270),
      child: Row(
        mainAxisAlignment:
            !isMe ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          !isMe
              ? ClipOval(
                  child: _imageAvatar(),
                )
              : ChatMessage(
                  isMe: isMe,
                  text: _isRecall(message) ?? '',
                ),
          const SizedBox(
            width: 6,
          ),
          isMe
              ? ClipOval(
                  child: _imageAvatar(),
                )
              : ChatMessage(
                  isMe: isMe,
                  text: _isRecall(message) ?? '',
                )
        ],
      ),
    );
  }

  // 判断是否是撤回的消息
  _isRecall(ChatMessageItemModel message) {
    if (message.message.type == 2) {
      return message.message.body;
    } else {
      return MessageBodyModel.fromJson(message.message.body).content;
    }
  }

  _imageAvatar() {
    final user = userCacheController.userCacheMap[message.fromUser.uid];
    if (user?.avatar != '') {
      return Image.network(
        user!.avatar,
        width: 30.0, // 图片的宽度
        height: 30.0, // 图片的高度
        fit: BoxFit.cover, // 图片填充方式，可以根据需要进行调整
      );
    } else {
      return Image.asset(
        'assets/images/Thumbnail.png',
        width: 30.0, // 图片的宽度
        height: 30.0, // 图片的高度
        fit: BoxFit.cover, // 图片填充方式，可以根据需要进行调整
      );
    }
  }
}

class ChatMessage extends StatelessWidget {
  final bool isMe;
  final String text;

  const ChatMessage({super.key, required this.isMe, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 7.5),
      margin: const EdgeInsets.only(bottom: 10),
      constraints: const BoxConstraints(
        maxWidth: 270.0, // 设置最大宽度为270.0像素
        maxHeight: double.infinity,
      ),
      decoration: BoxDecoration(
          color: isMe
              ? lightColor.messageItemColor2
              : lightColor.messageItemColor, // 设置背景色
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(12.0),
            topRight: const Radius.circular(12.0),
            bottomLeft:
                isMe ? const Radius.circular(12.0) : const Radius.circular(2.0),
            bottomRight:
                isMe ? const Radius.circular(2.0) : const Radius.circular(12.0),
          )), // 设置内边距
      child: Wrap(
        children: [
          Text(
            text,
            style: TextStyle(
                color: isMe ? Colors.white : lightColor.iconColor, // 设置文本颜色
                fontSize: 16.0, // 设置文本大小
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
