import 'package:floor/floor.dart';
import 'package:mallchat/entities/user_entity.dart';

@dao
abstract class UserDao {
  @Query("SELECT * FROM User")
  Future<User?> findUser();

  @Query('SELECT * FROM User WHERE uid = :uid')
  Future<User?> findUserById(String uid);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> upsertUser(User user);

  @delete
  Future<void> deleteUser(User user);
}
