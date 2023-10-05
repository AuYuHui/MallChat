// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  UserDao? _userDaoInstance;

  UserCacheDao? _userCacheDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 2,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `user` (`uid` INTEGER NOT NULL, `avatar` TEXT NOT NULL, `token` TEXT NOT NULL, `power` INTEGER NOT NULL, PRIMARY KEY (`uid`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `userCache` (`uid` INTEGER NOT NULL, `avatar` TEXT NOT NULL, `name` TEXT NOT NULL, `locPlace` TEXT NOT NULL, `lastOptTime` INTEGER NOT NULL, `lastModifyTime` INTEGER NOT NULL, `needRefresh` INTEGER, PRIMARY KEY (`uid`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  UserDao get userDao {
    return _userDaoInstance ??= _$UserDao(database, changeListener);
  }

  @override
  UserCacheDao get userCacheDao {
    return _userCacheDaoInstance ??= _$UserCacheDao(database, changeListener);
  }
}

class _$UserDao extends UserDao {
  _$UserDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _userInsertionAdapter = InsertionAdapter(
            database,
            'user',
            (User item) => <String, Object?>{
                  'uid': item.uid,
                  'avatar': item.avatar,
                  'token': item.token,
                  'power': item.power
                }),
        _userDeletionAdapter = DeletionAdapter(
            database,
            'user',
            ['uid'],
            (User item) => <String, Object?>{
                  'uid': item.uid,
                  'avatar': item.avatar,
                  'token': item.token,
                  'power': item.power
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<User> _userInsertionAdapter;

  final DeletionAdapter<User> _userDeletionAdapter;

  @override
  Future<User?> findUser() async {
    return _queryAdapter.query('SELECT * FROM User',
        mapper: (Map<String, Object?> row) => User(
            uid: row['uid'] as int,
            avatar: row['avatar'] as String,
            token: row['token'] as String,
            power: row['power'] as int));
  }

  @override
  Future<User?> findUserById(String uid) async {
    return _queryAdapter.query('SELECT * FROM User WHERE uid = ?1',
        mapper: (Map<String, Object?> row) => User(
            uid: row['uid'] as int,
            avatar: row['avatar'] as String,
            token: row['token'] as String,
            power: row['power'] as int),
        arguments: [uid]);
  }

  @override
  Future<void> upsertUser(User user) async {
    await _userInsertionAdapter.insert(user, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteUser(User user) async {
    await _userDeletionAdapter.delete(user);
  }
}

class _$UserCacheDao extends UserCacheDao {
  _$UserCacheDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _userCacheInsertionAdapter = InsertionAdapter(
            database,
            'userCache',
            (UserCache item) => <String, Object?>{
                  'uid': item.uid,
                  'avatar': item.avatar,
                  'name': item.name,
                  'locPlace': item.locPlace,
                  'lastOptTime': item.lastOptTime,
                  'lastModifyTime': item.lastModifyTime,
                  'needRefresh': item.needRefresh == null
                      ? null
                      : (item.needRefresh! ? 1 : 0)
                }),
        _userCacheDeletionAdapter = DeletionAdapter(
            database,
            'userCache',
            ['uid'],
            (UserCache item) => <String, Object?>{
                  'uid': item.uid,
                  'avatar': item.avatar,
                  'name': item.name,
                  'locPlace': item.locPlace,
                  'lastOptTime': item.lastOptTime,
                  'lastModifyTime': item.lastModifyTime,
                  'needRefresh': item.needRefresh == null
                      ? null
                      : (item.needRefresh! ? 1 : 0)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<UserCache> _userCacheInsertionAdapter;

  final DeletionAdapter<UserCache> _userCacheDeletionAdapter;

  @override
  Future<UserCache?> findUserCache() async {
    return _queryAdapter.query('SELECT * FROM UserCache',
        mapper: (Map<String, Object?> row) => UserCache(
            uid: row['uid'] as int,
            avatar: row['avatar'] as String,
            name: row['name'] as String,
            locPlace: row['locPlace'] as String,
            lastOptTime: row['lastOptTime'] as int,
            lastModifyTime: row['lastModifyTime'] as int,
            needRefresh: row['needRefresh'] == null
                ? null
                : (row['needRefresh'] as int) != 0));
  }

  @override
  Future<UserCache?> findUserCacheById(String uid) async {
    return _queryAdapter.query('SELECT * FROM  UserCacheWHERE uid = ?1',
        mapper: (Map<String, Object?> row) => UserCache(
            uid: row['uid'] as int,
            avatar: row['avatar'] as String,
            name: row['name'] as String,
            locPlace: row['locPlace'] as String,
            lastOptTime: row['lastOptTime'] as int,
            lastModifyTime: row['lastModifyTime'] as int,
            needRefresh: row['needRefresh'] == null
                ? null
                : (row['needRefresh'] as int) != 0),
        arguments: [uid]);
  }

  @override
  Future<void> upsertUserCache(UserCache user) async {
    await _userCacheInsertionAdapter.insert(user, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteUserCache(UserCache user) async {
    await _userCacheDeletionAdapter.delete(user);
  }
}
