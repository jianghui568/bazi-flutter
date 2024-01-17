class LiuYear {
  int year;
  int age;
  String ganZhi;
  String xun;
  String xunKong;

  LiuYear(
      {required this.year,
      required this.age,
      required this.ganZhi,
      required this.xun,
      required this.xunKong});

  factory LiuYear.fromJson(Map<String, dynamic> json) {
    return LiuYear(
      year: json['year'],
      age: json['age'],
      ganZhi: json['ganZhi'],
      xun: json['xun'],
      xunKong: json['xunKong'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this.year;
    data['age'] = this.age;
    data['ganZhi'] = this.ganZhi;
    data['xun'] = this.xun;
    data['xunKong'] = this.xunKong;
    return data;
  }
}
