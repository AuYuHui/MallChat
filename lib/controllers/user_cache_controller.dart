import 'package:get/get.dart';
import 'package:mallchat/entities/user_cache_entity.dart';
import 'package:mallchat/injection.dart';
import 'package:mallchat/services/user.dart';

// 用户缓存
class UserCacheController extends GetxController {
  late RxMap<int, UserCache> userCacheMap = <int, UserCache>{}.obs;

  @override
  void onInit() async {
    final getAllUserCache = await db.userCacheDao.findAllUserCache();
    if (getAllUserCache != null) {
      for (final item in getAllUserCache) {
        userCacheMap[item.uid] = item;
      }
    }
    super.onInit();
  }

  getUserInfoBatch(List<int> uidList) async {
    if (uidList.isEmpty) return;

    List newList = uidList.map((e) {
      return {'uid': e};
    }).toList();
    final data = await UserService().getUserInfoBatch(newList);

    data.forEach((item) {
      if (userCacheMap[item.uid] == null) {
        final user = UserCache(
            uid: item.uid,
            avatar: item.avatar,
            name: item.name,
            locPlace: item.locPlace,
            needRefresh: item.needRefresh);
        userCacheMap[item.uid] = user;
        try {
          db.userCacheDao.upsertUserCache(user);
        } catch (err) {}
      }
    });
  }
}
