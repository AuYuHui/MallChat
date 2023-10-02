import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mallchat/app/config/colors.dart';
import 'package:mallchat/app/modules/mine/component/functional.dart';
import 'package:mallchat/app/modules/mine/controllers/mine_controller.dart';
import 'package:mallchat/controllers/login_controller.dart';
import 'package:mallchat/controllers/user_controller.dart';
import 'package:mallchat/helper/websocket.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MineView extends GetView<MineController> {
  MineView({Key? key}) : super(key: key);
  LoginController loginController = Get.put(LoginController());
  UserController userController = Get.put(UserController());

  Socket socket = Socket();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(25.0),
          color: Colors.white,
          child: Row(
            children: [
              GestureDetector(
                onTap: _showLoginDialog,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(10.0), // 10.0是圆角的半径，你可以根据需要调整
                  child: Image.asset(
                    'assets/images/Thumbnail.png', // 替换为你的图片URL
                    width: 70.0, // 图片的宽度
                    height: 70.0, // 图片的高度
                    fit: BoxFit.cover, // 图片适应方式，根据需要选择
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "HANJJI",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: lightColor.titleColor,
                          ),
                        ),
                        Icon(
                          Icons.settings_outlined,
                          size: 25,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.5,
                    ),
                    Text(
                      "抹茶号：hanjji",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: lightColor.subTitleColor),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          color: Colors.white,
          child: Functional(),
        )
      ],
    );
  }

  void _showLoginDialog() {
    // 发送登录请求
    socket.sendMessage({'type': 1});

    Get.defaultDialog(
        title: '扫码登录',
        radius: 4.0,
        content: Obx(() => SizedBox(
              width: 200,
              height: 200,
              child: QrImageView(
                data: loginController.loginUrl.value,
                version: QrVersions.auto,
                size: 200,
                gapless: false,
              ),
            )));
  }
}
