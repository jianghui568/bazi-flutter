import 'package:bazi/extention/theme/extention_theme.dart';
import 'package:bazi/widget/AppBarBuilder.dart';
import 'package:flutter/material.dart';

class PaiPage extends StatefulWidget {
  @override
  _PaiPageState createState() => _PaiPageState();
}

class _PaiPageState extends State<PaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBuilder.build(context, '我是排盘页面标题'),
      body: Center(
        child: Text(
          '我是排盘页面',
          style: Theme.of(context).bodyStyle,
        ),
      ),
    );
  }
}
