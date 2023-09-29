import 'package:get/get.dart';
import 'package:mallchat/app/layout/bindings/layout_binding.dart';
import 'package:mallchat/app/layout/views/layout_view.dart';
import 'package:mallchat/app/modules/chat/bindings/chat_binding.dart';
import 'package:mallchat/app/modules/chat/views/chat_view.dart';
import 'package:mallchat/app/modules/home/bindings/home_binding.dart';
import 'package:mallchat/app/modules/home/views/home_view.dart';
import 'package:mallchat/app/modules/mine/bindings/mine_binding.dart';
import 'package:mallchat/app/modules/mine/views/mine_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LAYOUT;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MINE,
      page: () => MineView(),
      binding: MineBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.LAYOUT,
      page: () => LayoutView(),
      binding: LayoutBinding(),
    ),
  ];
}
