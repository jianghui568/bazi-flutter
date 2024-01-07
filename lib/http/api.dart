import 'package:bazi/http/config.dart';
import 'package:bazi/http/http.dart';

class Api {
  static Future destinyPredict(Map<String, dynamic> data) async {
    return Http().post(Config.PREDICT, data: data);
  }
}
