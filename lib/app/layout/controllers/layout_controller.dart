import 'package:get/get.dart';

class LayoutController extends GetxController {
  final RxInt currentIndex = 0.obs;

  changeCurrentIndex(int value) {
    currentIndex.value = value;
  }
}
