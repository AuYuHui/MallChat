import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:mallchat/app/config/colors.dart';
import 'package:mallchat/app/modules/home/component/conversation.dart';
import 'package:mallchat/app/modules/home/controllers/home_controller.dart';
import 'package:mallchat/controllers/session_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final SessionController sessionController = Get.put(SessionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("抹茶"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            color: lightColor.defaultText,
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SlidableAutoCloseBehavior(
            child: EasyRefresh(
          header: const ClassicHeader(
            dragText: "下拉加载",
            armedText: "释放刷新",
            readyText: "开始加载",
            processingText: "正在加载",
            processedText: "刷新成功",
          ),
          onRefresh: sessionController.getSessionList,
          child: Obx(() => ListView.builder(
              itemCount: sessionController.sessionList.length,
              itemBuilder: (context, index) {
                final current = sessionController.sessionList[index];
                return ConverSation(
                  id: index,
                  onDelete: () {
                    sessionController.removeSession(index);
                  },
                  onTap: () {
                    Get.toNamed(
                        "/chat?title=${current.name}&roomId=${current.roomId}");
                  },
                  session: current,
                );
              })),
        )),
      ),
    );
  }
}
