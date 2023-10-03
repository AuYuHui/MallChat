import 'package:get/get.dart';
import 'package:mallchat/services/session.dart';

class HomeController extends GetxController {
  final RxInt currentIndex = 0.obs;
  final RxList numberList = ["张三", "李四"].obs;

  @override
  void onInit() async {
    final data = await SessionService().getSessionList();
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
