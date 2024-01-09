
class Result<T> {
  int code;
  T? data;
  String message;
  bool httpError;

  Result.success(this.data, this.message) : code = 200, httpError = false;
  Result.error(this.message, this.httpError) : code = 500, data = null;

  bool success() {
    return this.code == 200;
  }

  factory Result.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJson) {
    var msg = json['message'];
    if (json['code'] == 200) {
      return Result.success(fromJson(json['data']), msg);
    }
    return Result.error(msg, false);
  }
}
