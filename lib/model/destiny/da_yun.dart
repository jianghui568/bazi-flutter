import 'package:bazi/model/destiny/liu_year.dart';

class DaYun {
  int startYear;
  int endYear;
  int startAge;
  int endAge;
  Null solar;
  String ganZhi;
  List<LiuYear> liuYearList;

  DaYun(
      {required this.startYear,
      required this.endYear,
      required this.startAge,
      required this.endAge,
      required this.solar,
      required this.ganZhi,
      required this.liuYearList});

  factory DaYun.fromJson(Map<String, dynamic> json) {
    return DaYun(
        startYear: json['startYear'],
        endYear: json['endYear'],
        startAge: json['startAge'],
        endAge: json['endAge'],
        solar: json['solar'],
        ganZhi: json['ganZhi'],
        liuYearList: List<LiuYear>.from(
            json['liuYearList'].map((json) => LiuYear.fromJson(json))));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startYear'] = this.startYear;
    data['endYear'] = this.endYear;
    data['startAge'] = this.startAge;
    data['endAge'] = this.endAge;
    data['solar'] = this.solar;
    data['ganZhi'] = this.ganZhi;
    data['liuYearList'] = this.liuYearList.map((v) => v.toJson()).toList();
    return data;
  }
}
