import 'dart:convert';

class EightChar {
  String yearGan;
  String yearDiShi;
  String yearGanShiShen;
  String yearZhi;
  String yearNaYin;
  List<String> yearZhiShiShen;
  List<String> yearHideGan;
  String monthGan;
  String monthNaYin;
  String monthDiShi;
  String monthGanShiShen;
  String monthZhi;
  List<String> monthZhiShiShen;
  List<String> monthHideGan;
  String dayGan;
  String dayNaYin;
  String dayDiShi;
  String dayGanShiShen;
  String dayZhi;
  List<String> dayZhiShiShen;
  List<String> dayHideGan;
  String timeGan;
  String timeNaYin;
  String timeDiShi;
  String timeGanShiShen;
  String timeZhi;
  List<String> timeZhiShiShen;
  List<String> timeHideGan;

  EightChar({
    required this.yearGan,
    required this.yearDiShi,
    required this.yearGanShiShen,
    required this.yearZhi,
    required this.yearNaYin,
    required this.yearZhiShiShen,
    required this.yearHideGan,
    required this.monthGan,
    required this.monthNaYin,
    required this.monthDiShi,
    required this.monthGanShiShen,
    required this.monthZhi,
    required this.monthZhiShiShen,
    required this.monthHideGan,
    required this.dayGan,
    required this.dayNaYin,
    required this.dayDiShi,
    required this.dayGanShiShen,
    required this.dayZhi,
    required this.dayZhiShiShen,
    required this.dayHideGan,
    required this.timeGan,
    required this.timeNaYin,
    required this.timeDiShi,
    required this.timeGanShiShen,
    required this.timeZhi,
    required this.timeZhiShiShen,
    required this.timeHideGan,
  });

  factory EightChar.fromJson(Map<String, dynamic> json) {
    return EightChar(
        yearGan: json['yearGan'],
        yearDiShi: json['yearDiShi'],
        yearGanShiShen: json['yearGanShiShen'],
        yearZhi: json['yearZhi'],
        yearNaYin: json['yearNaYin'],
        yearZhiShiShen: List<String>.from(json['yearZhiShiShen']),
        yearHideGan: List<String>.from(json['yearHideGan']),
        monthGan: json['monthGan'],
        monthNaYin: json['monthNaYin'],
        monthDiShi: json['monthDiShi'],
        monthGanShiShen: json['monthGanShiShen'],
        monthZhi: json['monthZhi'],
        monthZhiShiShen: List<String>.from(json['monthZhiShiShen']),
        monthHideGan: List<String>.from(json['monthHideGan']),
        dayGan: json['dayGan'],
        dayNaYin: json['dayNaYin'],
        dayDiShi: json['dayDiShi'],
        dayGanShiShen: json['dayGanShiShen'],
        dayZhi: json['dayZhi'],
        dayZhiShiShen: json['dayZhiShiShen'],
        dayHideGan: json['dayHideGan'],
        timeGan: json['timeGan'],
        timeNaYin: json['timeNaYin'],
        timeDiShi: json['timeDiShi'],
        timeGanShiShen: json['timeGanShiShen'],
        timeZhi: json['timeZhi'],
        timeZhiShiShen: json['timeZhiShiShen'],
        timeHideGan: json['timeHideGan']);
  }
}

class LiuYear {
  int year;
  int age;
  String ganZhi;
  String xun;
  String xunKong;

  LiuYear(
      {required this.year,
      required this.age,
      required this.ganZhi,
      required this.xun,
      required this.xunKong});

  factory LiuYear.fromJson(Map<String, dynamic> json) {
    return LiuYear(
      year: json['year'],
      age: json['age'],
      ganZhi: json['ganZhi'],
      xun: json['xun'],
      xunKong: json['xunKong'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this.year;
    data['age'] = this.age;
    data['ganZhi'] = this.ganZhi;
    data['xun'] = this.xun;
    data['xunKong'] = this.xunKong;
    return data;
  }
}

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
        liuYearList: json['liuYearList']);
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

class DestinyPredict {
  String lunar;
  String fullDescription;
  String solar;
  String shengXiao;
  String shengXiaoLiChun;
  String shengXiaoExact;
  String jieQiCurrent;
  String jieQiCurrentDateTime;
  String jieQiPrev;
  String jieQiPrevDateTime;
  String jieQiNext;
  String jieQiNextDateTime;
  String gong;
  EightChar eightChar;
  List<DaYun> daYunList;

  DestinyPredict({
    required this.lunar,
    required this.fullDescription,
    required this.solar,
    required this.shengXiao,
    required this.shengXiaoLiChun,
    required this.shengXiaoExact,
    required this.jieQiCurrent,
    required this.jieQiCurrentDateTime,
    required this.jieQiPrev,
    required this.jieQiPrevDateTime,
    required this.jieQiNext,
    required this.jieQiNextDateTime,
    required this.gong,
    required this.eightChar,
    required this.daYunList,
  });

  factory DestinyPredict.fromJson(Map<String, dynamic> json) {
    return DestinyPredict(
        lunar: json['lunar'],
        fullDescription: json['fullDescription'],
        solar: json['solar'],
        shengXiao: json['shengXiao'],
        shengXiaoLiChun: json['shengXiaoLiChun'],
        shengXiaoExact: json['shengXiaoExact'],
        jieQiCurrent: json['jieQiCurrent'] ??  "",
        jieQiCurrentDateTime: json['jieQiCurrentDateTime'] ??"",
        jieQiPrev: json['jieQiPrev'],
        jieQiPrevDateTime: json['jieQiPrevDateTime'],
        jieQiNext: json['jieQiNext'],
        jieQiNextDateTime: json['jieQiNextDateTime'],
        gong: json['gong'],
        eightChar: EightChar.fromJson(json['eightChar']),
        daYunList: List<DaYun>.from(json['daYunList']);
  }
}
