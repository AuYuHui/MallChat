import 'package:get/get.dart';

class LoginController extends GetxController {
  final RxString loginUrl = ''.obs;

  // 修改登录二维码
  changeLoginUrl(String value) {
    loginUrl.value = value;
  }
}
