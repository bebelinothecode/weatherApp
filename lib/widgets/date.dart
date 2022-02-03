import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

DateTime now = DateTime.now();
String formattedDate = DateFormat('yyyy-MM-dd').format(now);

Widget currentDateText() {
  return Text(formattedDate,
  style: const TextStyle(
    fontSize: 18,
  ),
  );

}