import 'package:bazi/common/extention/extention_theme.dart';
import 'package:bazi/widget/AppBarBuilder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBuilder.build(context, '我是首页标题'),
      body: Center(
        child: Text(
          '狗一样的',
          style: Theme.of(context).bodyStyle,
        ),
      ),
    );
  }
}
