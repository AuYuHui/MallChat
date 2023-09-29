import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mallchat/app/config/colors.dart';
import 'package:mallchat/app/layout/controllers/layout_controller.dart';
import 'package:mallchat/app/modules/home/views/home_view.dart';
import 'package:mallchat/app/modules/mine/views/mine_view.dart';

class LayoutView extends GetView<LayoutController> {
  LayoutView({Key? key}) : super(key: key);

  final PageController pageController = PageController();
  final LayoutController layoutController = Get.put(LayoutController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          onPageChanged: layoutController.changeCurrentIndex,
          children: [HomeView(), MineView()],
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            backgroundColor: lightColor.tabBarBg,
            landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: lightColor.tabBarText,
            selectedItemColor: lightColor.tabBarSelectText,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            type: BottomNavigationBarType.fixed,
            enableFeedback: true,
            elevation: 0,
            onTap: (int value) {
              pageController.jumpToPage(value);
            },
            currentIndex: layoutController.currentIndex.value,
            items: [
              _createAnimatedNavBarItem(
                  icon: Icons.question_answer_outlined,
                  activatedIcon: Icons.question_answer,
                  activated: layoutController.currentIndex.value == 0,
                  label: "抹茶"),
              _createAnimatedNavBarItem(
                  icon: Icons.person_outline,
                  activatedIcon: Icons.person,
                  activated: layoutController.currentIndex.value == 1,
                  label: "我的"),
            ],
          )),
    );
  }
}

BottomNavigationBarItem _createAnimatedNavBarItem({
  String? label,
  bool activated = false,
  Color? activatedColor,
  required IconData icon,
  required IconData activatedIcon,
}) {
  return BottomNavigationBarItem(
    label: label,
    icon: AnimatedCrossFade(
      firstChild: Icon(
        icon,
      ),
      secondChild: Icon(activatedIcon,
          color: activatedColor ?? lightColor.tabBarSelectText),
      crossFadeState:
          activated ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300),
    ),
  );
}
