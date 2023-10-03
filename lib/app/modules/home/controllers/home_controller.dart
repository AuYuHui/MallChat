import 'package:get/get.dart';
import 'package:mallchat/models/session_model.dart';
import 'package:mallchat/services/session.dart';

class HomeController extends GetxController {
  final RxInt currentIndex = 0.obs;
  final RxList numberList = ["张三", "李四"].obs;
  final RxList<SessionModel> sessionList = <SessionModel>[].obs;

  @override
  void onInit() async {
    final data = await SessionService().getSessionList();
    sessionList.value = data.list;
    super.onInit();
  }

  changeCurrentIndex(int value) {
    currentIndex.value = value;
    update();
  }

  removeChildWidget(int index) {
    if (index >= 0 && index < numberList.length) {
      numberList.removeAt(index);
      update();
    }
  }
}
