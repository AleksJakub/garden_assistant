// lib/utils/date_extensions.dart
import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {
  String formattedDate() => DateFormat.yMMMd().format(this);
}
