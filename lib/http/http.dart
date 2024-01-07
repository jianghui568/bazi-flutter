import 'package:bazi/http/config.dart';
import 'dart:async';
import 'package:dio/dio.dart';

typedef RequestCallBack = void Function(Map data);

class Http {
  final Duration _timeout = 30 as Duration;
  late Dio _dio;

  Http() {
    _dio = Dio(BaseOptions(
      baseUrl: Config.BASE_URL,
      connectTimeout: 5 * 1000 as Duration,
      receiveTimeout: _timeout * 1000,
    ));
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