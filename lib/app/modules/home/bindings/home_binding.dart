import 'package:get/get.dart';
import 'package:mallchat/app/modules/chat/controllers/chat_controller.dart';
import 'package:mallchat/controllers/user_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut(() => UserController());
  }
}
