import 'package:bazi/http/config.dart';
import 'dart:async';
import 'package:dio/dio.dart';

typedef RequestCallBack = void Function(Map data);

class Http {
  final _timeout = 30;
  late Dio _dio;

  Http._internal();

  static late Http _instance;

  factory Http() {
    _instance = Http._internal();
    _instance._dio = Dio(BaseOptions(
      baseUrl: Config.BASE_URL,
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: _instance._timeout),
    ));
    return _instance;
  }

  Future<Response> get(String path, {Map<String, dynamic>? params}) async {
    try {
      final response = await _dio.get(path, queryParameters: params);
      return response;
    } on DioException catch (e) {
      // Handle DioError here
      throw e;
    }
  }

  Future<Response> post(String path, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.post(path, data: data);
      return response;
    } on DioException catch (e) {
      // Handle DioError here
      throw e;
    }
  }
}
