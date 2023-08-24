import 'package:intl/intl.dart';

void logger(String message) {
  var startServerTime = DateFormat.yMMMMd('en_US').add_Hms().format(DateTime.now());
  print('$startServerTime : $message');
}