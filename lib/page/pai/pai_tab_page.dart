import 'package:bazi/extention/theme/extention_theme.dart';
import 'package:bazi/page/pai/pai_baseinfo_page.dart';
import 'package:bazi/page/pai/pai_eight_char_page.dart';
import 'package:flutter/material.dart';
import 'package:bazi/widget/AppBarBuilder.dart';
import 'package:bazi/model/destiny_predict.dart';

class _TabData {
  final Widget tab;
  final Widget body;
  _TabData({required this.tab, required this.body});
}

class PaiTabPage extends StatefulWidget {
  String title;
  DestinyPredict destinyPredict;

  PaiTabPage({required this.title, required this.destinyPredict});

  @override
  _PaiTabPageState createState() =>
      _PaiTabPageState(title: this.title, destinyPredict: this.destinyPredict);
}

class _PaiTabPageState extends State<PaiTabPage>
    with SingleTickerProviderStateMixin {
  String title;
  DestinyPredict destinyPredict;
  _PaiTabPageState({required this.title, required this.destinyPredict});

  @override
  Widget build(BuildContext context) {
    final _tabDataList = <_TabData>[
      _TabData(
          tab: Text('11'),
          body: BaseinfoPage(destinyPredict: this.destinyPredict)),
      _TabData(
          tab: Text('22'),
          body: EightCharPage(destinyPredict: this.destinyPredict)),
    ];

    final tabBarList = _tabDataList.map((item) => item.tab).toList();
    final tabBarViewList = _tabDataList.map((item) => item.body).toList();

    return DefaultTabController(
        length: tabBarList.length,
        child: Column(
          children: <Widget>[
            AppBarBuilder.build(context, this.title),
            Container(
              color: Theme.of(context).navBackgroundColor,
              width: double.infinity,
              height: 30,
              child: TabBar(
                  isScrollable: false,
                  indicator: BoxDecoration(
                    color: Colors.transparent, // 设置透明颜色，去除指示器的默认底部线
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.blue, // 设置指示器的颜色
                        width: 4.0, // 设置指示器的高度
                      ),
                    ),
                  ),
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: Colors.white,
                  unselectedLabelStyle: TextStyle(fontSize: 20),
                  labelColor: Colors.white,
                  labelStyle: Theme.of(context).styleTitleLarge,
                  tabs: tabBarList),
            ),
            Expanded(
                child: TabBarView(
              children: tabBarViewList,
            ))
          ],
        ));
  }
}
