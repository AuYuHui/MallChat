import 'package:get/get.dart';
import 'package:mallchat/app/modules/chat/model/message.dart';
import 'package:mallchat/services/session.dart';

class ChatController extends GetxController {
  //TODO: Implement ChatController
  final RxBool emojiShow = true.obs;

  final RxList<Message> messages = <Message>[].obs;

  @override
  void onInit() {
    final roomId = Get.parameters['roomId'] ?? '1';

    getChatMessage(int.parse(roomId));

    super.onInit();
  }

  getChatMessage(int roomId) async {
    final data = await SessionService().getChatMessage(roomId);
  }
}
