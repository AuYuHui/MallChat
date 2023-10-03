import 'package:get/get.dart';
import 'package:mallchat/models/chat_message_item_model.dart';
import 'package:mallchat/services/session.dart';

class ChatController extends GetxController {
  //TODO: Implement ChatController
  final RxBool emojiShow = true.obs;

  final RxList<ChatMessageItemModel> messages = <ChatMessageItemModel>[].obs;

  @override
  void onInit() {
    final roomId = Get.parameters['roomId'] ?? '1';

    getChatMessage(int.parse(roomId));

    super.onInit();
  }

  getChatMessage(int roomId) async {
    final data = await SessionService().getChatMessage(roomId);
    messages.value = data.list;
    update();
  }
}
