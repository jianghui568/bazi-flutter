class DestinyZhuInfo {
  String gan;
  String ganShiShen;
  String zhi;
  String diShi;
  List<String> cang;
  List<String> zhiShiShen;

  String xunKong;
  String zhangSheng;
  String naYin;

  DestinyZhuInfo(
      {required this.gan,
      required this.ganShiShen,
      required this.zhi,
      required this.diShi,
      required this.cang,
      required this.zhiShiShen,
      required this.xunKong,
      required this.naYin,
      required this.zhangSheng});

  factory DestinyZhuInfo.fromJson(Map<String, dynamic> json) {
    return DestinyZhuInfo(
      gan: json['gan'],
      ganShiShen: json['ganShiShen'],
      zhi: json['zhi'],
      diShi: json['diShi'],
      xunKong: json['xunKong'],
      zhangSheng: json['zhangSheng'],
      naYin: json['naYin'],
      cang: List<String>.from(json['cang']),
      zhiShiShen: List<String>.from(json['zhiShiShen']),
    );
  }
}
