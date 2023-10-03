// 时间戳格式化
import 'package:intl/intl.dart';

String formatTimestamp(int timestamp) {
  DateTime now = DateTime.now();
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

  if (areDatesOnSameDay(now, date)) {
    return DateFormat('HH:mm').format(date);
  } else if (now.year - date.year >= 1) {
    return DateFormat('yyyy年MM月dd日').format(date);
  } else {
    return DateFormat('MM月dd日').format(date);
  }
}


// 判断两个日期是否是同一天
bool areDatesOnSameDay(DateTime date1, DateTime date2) {
  // 创建日期格式化对象，用于比较日期是否相同
  final DateFormat formatter = DateFormat('yyyy-MM-dd');

  // 格式化两个日期
  final String formattedDate1 = formatter.format(date1);
  final String formattedDate2 = formatter.format(date2);

  // 比较格式化后的日期是否相同
  return formattedDate1 == formattedDate2;
}