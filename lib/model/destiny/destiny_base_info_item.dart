class DestinyBaseInfoItem {
  final String title;
  final String content;

  DestinyBaseInfoItem({required this.title, required this.content});

  factory DestinyBaseInfoItem.fromJson(Map<String, dynamic> json) {
    return DestinyBaseInfoItem(
      title: json['title'],
      content: json['content'],
    );
  }
}
