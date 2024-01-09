import 'dart:convert';

import 'package:bazi/http/config.dart';
import 'package:bazi/model/result.dart';
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
      print(response);
      return response;
    } on DioException catch (e) {
      // Handle DioError here
      throw e;
    }
  }

  Future<Result> post(String path, Function(dynamic) fromJson, {Map<String, dynamic>? data}) async {

    try {
      final response = await _dio.post(path, data: data);
      final respData = response.data;
      return Result.fromJson(respData, fromJson);

    } on DioException catch (e) {
      // Handle DioError here
      // throw e;
      return Result.error(e.toString(),true);
    }
  }
  // Future<Result> post(String path,  Function(dynamic) fromJson, {Map<String, dynamic>? data}) async {
  //   _dio.post(path, data: data).then((value) {
  //     return Result.fromJson(jsonDecode(value as String), fromJson);
  //   }).catchError((err) {
  //     return Future.value(Result.error(err.toString(), true));
  //   });
  // }
}
