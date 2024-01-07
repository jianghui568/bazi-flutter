import 'package:dio/dio.dart';

class Logging extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("\n================== 请求数据 ==========================");
    print("url = ${options.uri.toString()}");
    print("headers = ${options.headers}");
    print("params = ${options.data}");
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("\n================== 响应数据 ==========================");
    print("code = ${response.statusCode}");
    print("data = ${response.data}");
    print("\n");
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException e, ErrorInterceptorHandler handler) {
    print("\n================== 错误响应数据 ======================");
    print("type = ${e.type}");
    print("message = ${e.message}");
    print("\n");
    return super.onError(e, handler);
  }
}
