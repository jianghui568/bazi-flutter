import 'package:bazi/model/destiny/destiny_base_info_item.dart';
import 'package:bazi/model/destiny_predict.dart';
import 'package:bazi/widget/label.dart';
import 'package:flutter/material.dart';

class BaseinfoPage extends StatefulWidget {
  DestinyPredict destinyPredict;

  BaseinfoPage({required this.destinyPredict});

  @override
  _BaseinfoPageState createState() =>
      _BaseinfoPageState(destinyPredict: this.destinyPredict);
}

class _BaseinfoPageState extends State<BaseinfoPage>
    with AutomaticKeepAliveClientMixin {
  DestinyPredict destinyPredict;

  List<DestinyBaseInfoItem> listData = [];

  _BaseinfoPageState({required this.destinyPredict});

  @override
  void initState() {
    super.initState();
    listData = this.destinyPredict.baseInfo.infoList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: this.listData.length,
            itemBuilder: (build, index) {
              DestinyBaseInfoItem baseInfo = this.listData[index];
              return Container(
                  padding:
                      EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
                  child: Label(
                    title: baseInfo.title,
                    subTitle: baseInfo.content,
                  ));
            }));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
