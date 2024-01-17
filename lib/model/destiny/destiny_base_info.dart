import 'package:bazi/model/destiny/destiny_base_info_item.dart';

class DestinyBaseInfo {
  List<DestinyBaseInfoItem> infoList;
  String name;
  String gender;
  String xingZuo;
  String xiu;
  String lunar;
  String fullDescription;
  String solar;
  String shengXiao;
  String jieQiCurrent;
  String jieQiCurrentDateTime;
  String jieQiPrev;
  String jieQiPrevDateTime;
  String jieQiNext;
  String jieQiNextDateTime;
  String xunKongYear;
  String xunKongMonth;
  String xunKongDay;
  String xunKongHour;
  String mingGong;
  String shenGong;
  String taiYuan;

  DestinyBaseInfo({
    required this.infoList,
    required this.name,
    required this.gender,
    required this.xingZuo,
    required this.xiu,
    required this.lunar,
    required this.fullDescription,
    required this.solar,
    required this.shengXiao,
    required this.jieQiCurrent,
    required this.jieQiCurrentDateTime,
    required this.jieQiPrev,
    required this.jieQiPrevDateTime,
    required this.jieQiNext,
    required this.jieQiNextDateTime,
    required this.xunKongYear,
    required this.xunKongMonth,
    required this.xunKongDay,
    required this.xunKongHour,
    required this.mingGong,
    required this.shenGong,
    required this.taiYuan,
  });

  factory DestinyBaseInfo.fromJson(Map<String, dynamic> json) =>
      DestinyBaseInfo(
        taiYuan: json['taiYuan'] ?? '',
        mingGong: json['mingGong'] ?? '',
        shenGong: json['shenGong'] ?? '',
        xunKongYear: json['xunKongYear'],
        xunKongMonth: json['xunKongMonth'],
        xunKongDay: json['xunKongDay'],
        xunKongHour: json['xunKongHour'],
        xiu: json['xiu'],
        name: json['name'],
        xingZuo: json['xingZuo'],
        gender: json['gender'],
        lunar: json['lunar'],
        fullDescription: json['fullDescription'],
        solar: json['solar'],
        shengXiao: json['shengXiao'],
        jieQiCurrent: json['jieQiCurrent'] ?? "",
        jieQiCurrentDateTime: json['jieQiCurrentDateTime'] ?? "",
        jieQiPrev: json['jieQiPrev'],
        jieQiPrevDateTime: json['jieQiPrevDateTime'],
        jieQiNext: json['jieQiNext'],
        jieQiNextDateTime: json['jieQiNextDateTime'],
        infoList: List<DestinyBaseInfoItem>.from(
            json['infoList'].map((json) => DestinyBaseInfoItem.fromJson(json))),
      );
}
