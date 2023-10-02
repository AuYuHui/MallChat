import 'package:get/get.dart';

class UserController extends GetxController {
  final RxString token = ''.obs;
  final RxString avatar = ''.obs;

  // 修改登录的token
  changToken(String value) {
    token.value = value;
  }

  // 头像
  changAvatar(String value) {
    avatar.value = value;
  }
}
