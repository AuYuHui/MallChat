import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt currentIndex = 0.obs;
  final RxList numberList = ["张三", "李四"].obs;

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
