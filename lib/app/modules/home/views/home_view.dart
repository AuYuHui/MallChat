import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:mallchat/app/config/colors.dart';
import 'package:mallchat/app/modules/home/component/conversation.dart';
import 'package:mallchat/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final HomeController homeController = Get.put(HomeController());

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
          onRefresh: homeController.getSessionList,
          child: Obx(() => ListView.builder(
              itemCount: homeController.sessionList.length,
              itemBuilder: (context, index) {
                return ConverSation(
                  id: index,
                  onDelete: () {
                    homeController.removeChildWidget(index);
                  },
                  onTap: () {
                    Get.toNamed("/chat?title=赖雅娇$index");
                  },
                  session: homeController.sessionList[index],
                );
              })),
        )),
      ),
    );
  }
}
