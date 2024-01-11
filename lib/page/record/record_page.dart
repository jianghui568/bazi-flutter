import 'package:bazi/extention/theme/extention_theme.dart';
import 'package:bazi/widget/AppBarBuilder.dart';
import 'package:flutter/material.dart';

class RecordPage extends StatefulWidget {
  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBuilder.build(context, '我是档案页面标题'),
      body: Center(
        child: Text(
          '我是档案页面',
          style: Theme.of(context).styleBodyLarge,
        ),
      ),
    );
  }
}
