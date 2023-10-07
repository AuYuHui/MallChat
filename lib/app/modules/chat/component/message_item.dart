import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:mallchat/app/config/colors.dart';
import 'package:mallchat/app/modules/image_preview/views/image_preview_view.dart';
import 'package:mallchat/controllers/user_cache_controller.dart';
import 'package:mallchat/controllers/user_controller.dart';
import 'package:mallchat/models/chat_message_item_model.dart';
import 'package:mallchat/models/message_body_model.dart';
import 'package:photo_view/photo_view.dart';

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
      child: (message.message.type == 2 || message.message.type == 8)
          ? _renderRecall()
          : _renderMessage(isMe),
    );
  }

  // 判断是否是撤回的消息
  _isRecall(ChatMessageItemModel message) {
    if (message.message.type == 2 || message.message.type == 8) {
      return message.message.body;
    } else {
      return MessageBodyModel.fromJson(message.message.body).content;
    }
  }

  _imageAvatar() {
    final user = userCacheController.userCacheMap[message.fromUser.uid];
    if (user == null) return const SizedBox();
    if (user.avatar != '') {
      return SizedBox(
        width: 30.0,
        height: 30.0,
        child: CachedNetworkImage(
          imageUrl: user.avatar,
          fit: BoxFit.cover,
        ),
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

  // 根据消息类型来渲染不同的信息
  _renderType(bool isMe) {
    if (message.message.type == 1) {
      return ChatMessage(
        isMe: isMe,
        text: _isRecall(message) ?? '',
      );
    } else if (message.message.type == 3) {
      return _renderImage(isMe);
    } else if (message.message.type == 7) {
      return _renderEmoji(isMe);
    } else {
      return ChatMessage(
        isMe: isMe,
        text: _isRecall(message) ?? '',
      );
    }
  }

  // 渲染消息
  _renderMessage(bool isMe) {
    return Row(
      mainAxisAlignment:
          !isMe ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        !isMe
            ? ClipOval(
                child: Obx(() => _imageAvatar()),
              )
            : _renderType(isMe),
        const SizedBox(
          width: 8,
        ),
        isMe
            ? ClipOval(
                child: Obx(() => _imageAvatar()),
              )
            : _renderType(isMe)
      ],
    );
  }

  // 图片信息类型
  _renderImage(bool isMe) {
    final messageBody = MessageBodyModel.fromJson(message.message.body);
    return GestureDetector(
      child: Container(
          alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
          width: 200,
          height: 200,
          child: Image.network(messageBody.url!)),
      onTap: () {
        Get.to(ImagePreviewView(
          filePath: messageBody.url!,
          width: messageBody.width!,
          height: messageBody.height!,
        ));
      },
    );
  }

  // 标签信息类型
  _renderEmoji(bool isMe) {
    return SizedBox(
        width: 100,
        height: 100,
        child: Image.network(
            MessageBodyModel.fromJson(message.message.body).url!));
  }

  // 撤回信息类型
  _renderRecall() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Center(
          child: Text(
        message.message.body,
        style: const TextStyle(fontSize: 14.0, color: lightColor.subTitleColor),
      )),
    );
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
