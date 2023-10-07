import 'package:get/get.dart';

import '../layout/bindings/layout_binding.dart';
import '../layout/views/layout_view.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/image_preview/bindings/image_preview_binding.dart';
import '../modules/image_preview/bindings/image_preview_binding.dart';
import '../modules/image_preview/views/image_preview_view.dart';
import '../modules/image_preview/views/image_preview_view.dart';
import '../modules/mine/bindings/mine_binding.dart';
import '../modules/mine/views/mine_view.dart';

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
