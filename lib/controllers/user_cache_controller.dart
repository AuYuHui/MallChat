import 'package:get/get.dart';
import 'package:mallchat/entities/user_cache_entity.dart';
import 'package:mallchat/injection.dart';

// 用户缓存
class UserCacheController extends GetxController {
  late List<UserCache> userCacheList = [];

  @override
  void onInit() async {
    final userCacheList = await db.userCacheDao.findUserCache();
    print(userCacheList);
    super.onInit();
  }
}
