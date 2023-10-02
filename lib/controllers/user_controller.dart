import 'package:get/get.dart';
import 'package:mallchat/models/user_model.dart';

class UserController extends GetxController {
  final userInfo = UserModel(id: 0, avatar: '', name: '', sex: 0, modifyNameChance: 0).obs;

   // 更新用户信息
  void updateUserInfo(UserModel value) {
    userInfo.value = value;
  }
}
