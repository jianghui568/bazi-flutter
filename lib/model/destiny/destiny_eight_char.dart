import 'package:bazi/model/destiny/destiny_zhu_info.dart';

class DestinyEightChar {
  final DestinyZhuInfo year;
  final DestinyZhuInfo month;
  final DestinyZhuInfo day;
  final DestinyZhuInfo hour;

  DestinyEightChar({
    required this.year,
    required this.month,
    required this.day,
    required this.hour,
  });

  factory DestinyEightChar.fromJson(Map<String, dynamic> json) {
    return DestinyEightChar(
      year: DestinyZhuInfo.fromJson(json['year']),
      month: DestinyZhuInfo.fromJson(json['month']),
      day: DestinyZhuInfo.fromJson(json['day']),
      hour: DestinyZhuInfo.fromJson(json['hour']),
    );
  }
}
