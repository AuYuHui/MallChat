import 'package:floor/floor.dart';

@Entity(tableName: 'userCache')
class UserCache {
  @PrimaryKey()
  final int uid;
  @ColumnInfo(name: 'avatar')
  final String avatar;
  @ColumnInfo(name: 'name')
  final String name;
  @ColumnInfo(name: 'locPlace')
  final String? locPlace;
  @ColumnInfo(name: 'needRefresh')
  final bool? needRefresh;

  UserCache({
    required this.uid,
    required this.avatar,
    required this.name,
    this.locPlace,
    this.needRefresh,
  });
}
