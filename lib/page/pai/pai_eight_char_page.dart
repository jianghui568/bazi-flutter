import 'package:flutter/material.dart';

class EightCharPage extends StatefulWidget {
  @override
  _EightCharPageState createState() => _EightCharPageState();
}

class _EightCharPageState extends State<EightCharPage>
    with AutomaticKeepAliveClientMixin {
  final int listItemCount = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: this.listItemCount,
            itemBuilder: (build, index) {
              switch (index) {
                case 0:
                  return buildHeader(context);
                case 1:
                  return buildBaZi(context);
              }
              return Container();
            }));
  }

  buildHeader(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10.0), // 添加一些间距
        Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://img1.baidu.com/it/u=1238791605,3480162438&fm=253&fmt=auto&app=120&f=JPEG?w=1422&h=800'), // 替换为实际的头像链接
            ),
          ),
        ),
        SizedBox(width: 10.0), // 添加一些间距

        // 右侧文本
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 第一行文本
              Text(
                '标题1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('内容1'),

              // 添加一些间距
              SizedBox(height: 8.0),

              // 第二行文本
              Text(
                '标题2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('内容2'),

              // 添加一些间距
              SizedBox(height: 8.0),

              // 第三行文本
              Text(
                '标题3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('内容3'),
            ],
          ),
        ),
      ],
    );
  }

  buildBaZi(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: const FixedColumnWidth(80),
      children: [
        TableRow(

            children: [
          buildItem("农历", Colors.redAccent),
          buildItem("2", Colors.orangeAccent),
          buildItem("3", Colors.yellowAccent),
          buildItem("4", Colors.greenAccent),
          buildItem("422", Colors.greenAccent)
        ]),
        TableRow(children: [
          buildItem("四柱", Colors.greenAccent),
          buildItem("年柱", Colors.yellowAccent),
          buildItem("年柱", Colors.orangeAccent),
          buildItem('日柱', Colors.redAccent),
          buildItem('时柱', Colors.redAccent),
        ])
      ],
    );
  }

  buildItem(String content, Color backgroundColor) {
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      color: backgroundColor,
      child: Text(content),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
