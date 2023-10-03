import 'package:get/get.dart';
import 'package:mallchat/models/session_model.dart';
import 'package:mallchat/services/session.dart';

class HomeController extends GetxController {
  final RxInt currentIndex = 0.obs;
  final RxList<SessionModel> sessionList = <SessionModel>[].obs;

  @override
  void onInit() {
    getSessionList();
    super.onInit();
  }

  getSessionList() async {
    final data = await SessionService().getSessionList();
    sessionList.value = data.list;
    update();
  }

  removeChildWidget(int index) {
    final current = sessionList[index];

    if (current.roomId == 1) return;

    if (index >= 0 && index < sessionList.length) {
      sessionList.removeAt(index);
      update();
    }
  }
}
