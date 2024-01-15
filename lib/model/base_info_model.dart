class BaseInfoModel {
  final String title;
  final String subTitle;

  BaseInfoModel({required this.title, required this.subTitle});

  factory BaseInfoModel.fromJson(Map<String, dynamic> json) {
    return BaseInfoModel(
      title: json['title'],
      subTitle: json['subTitle'],
    );
  }
}
