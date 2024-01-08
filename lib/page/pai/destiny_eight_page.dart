import 'package:bazi/page/pai/baseinfo_page.dart';
import 'package:bazi/page/pai/eight_char_page.dart';
import 'package:flutter/material.dart';
import 'package:bazi/widget/AppBarBuilder.dart';

class DestinyEightPage  extends StatefulWidget {

  String title;

  DestinyEightPage({
    required  this.title
});

  @override
  _DestinyEightPageState createState() => _DestinyEightPageState(title:this.title);
}

class _DestinyEightPageState extends State<DestinyEightPage> with SingleTickerProviderStateMixin{
  late TabController _controller;

  final List<String> _tabValues = ['基础信息', '八字命盘'];
  final List<String> _contentList = [
    '语文',
    '英语',
    '化学',
    '语文',
    '英语',
    '化学',
    '语文',
    '英语',
    '化学',
  ];
  String title;
  _DestinyEightPageState({
    required this.title
  });

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: _tabValues.length,
      vsync: this,
    );

  }
  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when the widget is disposed.
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
          bottom: TabBar(
            tabs: _tabValues.map((f) {
              return Text(f);
            }).toList(),
            controller: _controller,
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: false,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black,
            indicatorWeight: 2.0,
            labelStyle: TextStyle(height: 2),
          ),
        ),
    body: TabBarView(controller: _controller, children: [
    BaseinfoPage(list:_contentList),
    EightCharPage(),
    ]),
    ); //固定Tab
  }
}