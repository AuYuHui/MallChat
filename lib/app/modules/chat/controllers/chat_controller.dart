import 'package:get/get.dart';
import 'package:mallchat/app/modules/chat/model/message.dart';

class ChatController extends GetxController {
  //TODO: Implement ChatController
  final RxBool emojiShow = true.obs;

  final RxList<Message> messages = <Message>[].obs;
}
