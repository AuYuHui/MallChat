import 'dart:async';
import 'package:floor/floor.dart';
import 'package:mallchat/data/dao/user_cache_dao.dart';
import 'package:mallchat/entities/user_cache_entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:mallchat/data/dao/user_dao.dart';
import 'package:mallchat/entities/user_entity.dart';

part 'database.g.dart';

@Database(version: 2, entities: [User, UserCache])
abstract class AppDatabase extends FloorDatabase {
  UserDao get userDao;
  UserCacheDao get userCacheDao;
}
