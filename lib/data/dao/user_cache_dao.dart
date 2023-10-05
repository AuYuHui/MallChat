import 'package:floor/floor.dart';
import 'package:mallchat/entities/user_cache_entity.dart';

@dao
abstract class UserCacheDao {
  @Query("SELECT * FROM UserCache")
  Future<List<UserCache>?> findAllUserCache();

  @Query('SELECT * FROM  UserCache WHERE uid = :uid')
  Future<UserCache?> findUserCacheById(String uid);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> upsertUserCache(UserCache user);

  @delete
  Future<void> deleteUserCache(UserCache user);
}
