import 'dart:convert';

import 'package:bazi/http/config.dart';
import 'package:bazi/http/http.dart';
import 'package:bazi/model/destiny_predict.dart';
import 'package:bazi/model/result.dart';

class Api {
  static Future<Result> destinyPredict(Map<String, dynamic> data) async {
    return Http().post(Config.PREDICT, (json) => DestinyPredict.fromJson(json), data: data);
  }
}
