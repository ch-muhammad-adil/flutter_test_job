
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var _dateFormatter = new DateFormat("MMMM d,yyyy");

Future<void> selectDate(BuildContext context, {Function selectedDate}) async {
  DateTime date = DateTime.now().toUtc();
  // initialDate must be on or after firstDate
  final DateTime picked = await showDatePicker(
    context: context,
    initialDate: date.add(Duration(days: 1)),
    firstDate: date.add(Duration(days: -1)),
    lastDate: date.add(Duration(days: 365 * 10)),
  );
  if (picked != null) {
    if (selectedDate != null) {
      selectedDate(_dateFormatter.format(picked));
    }
  }
}