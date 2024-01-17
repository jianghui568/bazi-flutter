import 'package:bazi/model/destiny/da_yun.dart';
import 'package:bazi/model/destiny/destiny_base_info.dart';
import 'package:bazi/model/destiny/destiny_eight_char.dart';

class DestinyPredict {
  DestinyBaseInfo baseInfo;
  DestinyEightChar eightChar;
  List<DaYun> daYunList;

  DestinyPredict({
    required this.baseInfo,
    required this.eightChar,
    required this.daYunList,
  });

  factory DestinyPredict.fromJson(Map<String, dynamic> json) {
    return DestinyPredict(
        baseInfo: DestinyBaseInfo.fromJson(json['baseInfo']),
        eightChar: DestinyEightChar.fromJson(json['eightChar']),
        daYunList: List<DaYun>.from(
            json['daYunList'].map((json) => DaYun.fromJson(json))));
  }
}
