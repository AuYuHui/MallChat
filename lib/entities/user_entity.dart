import 'package:floor/floor.dart';

@Entity(tableName: 'user')
class User {
  @PrimaryKey()
  final int uid;
  @ColumnInfo(name: 'avatar')
  final String avatar;
  @ColumnInfo(name: 'token')
  final String token;
  @ColumnInfo(name: 'power')
  final int power;

  User(
      {required this.uid,
      required this.avatar,
      required this.token,
      required this.power});
}
