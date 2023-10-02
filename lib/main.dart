import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:mallchat/data/database.dart';
import 'package:mallchat/helper/websocket.dart';
import 'package:mallchat/injection.dart';
import 'package:mallchat/helper/http.dart' as httpx;
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Socket socket = Socket();
  db = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  httpx.HttpClient();

  runApp(
    GetMaterialApp(
      title: "MallChat",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.dark,
                  statusBarColor: Colors.transparent),
              backgroundColor: Colors.white,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500))),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
    ),
  );
  // 初始化 WS
  socket.initSocket();
}
