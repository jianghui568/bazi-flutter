import 'package:flutter_pickers/time_picker/model/pduration.dart';

class DateHelp {
  static PDuration toYMDHMPDuration(datetimeString) {
    var datetime = DateTime.parse(datetimeString + ':00');
    return PDuration(
        year: datetime.year,
        month: datetime.month,
        day: datetime.day,
        hour: datetime.hour,
        minute: datetime.minute);
  }
}
