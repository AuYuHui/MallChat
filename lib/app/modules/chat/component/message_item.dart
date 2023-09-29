import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mallchat/app/config/colors.dart';
import 'package:mallchat/app/modules/chat/model/message.dart';

class MessageItem extends StatelessWidget {
  final Message message;

  const MessageItem({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 270),
      child: Row(
        mainAxisAlignment:
            !message.isMe ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          !message.isMe
              ? ClipOval(
                  child: Image.asset(
                    'assets/images/Thumbnail.png',
                    width: 30.0, // 图片的宽度
                    height: 30.0, // 图片的高度
                    fit: BoxFit.cover, // 图片填充方式，可以根据需要进行调整
                  ),
                )
              : ChatMessage(
                  isMe: message.isMe,
                  text: message.text,
                ),
          const SizedBox(
            width: 6,
          ),
          message.isMe
              ? ClipOval(
                  child: Image.asset(
                    'assets/images/Thumbnail.png',
                    width: 30.0, // 图片的宽度
                    height: 30.0, // 图片的高度
                    fit: BoxFit.cover, // 图片填充方式，可以根据需要进行调整
                  ),
                )
              : ChatMessage(
                  isMe: message.isMe,
                  text: message.text,
                )
        ],
      ),
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
