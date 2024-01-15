import 'package:bazi/model/base_info_model.dart';
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

  List<BaseInfoModel> listData = [];

  _BaseinfoPageState({required  this.destinyPredict});

  @override
  void initState() {
    super.initState();
    listData = this.destinyPredict.baseInfo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: this.listData.length,
            itemBuilder: (build, index) {
              BaseInfoModel baseInfo = this.listData[index];
              return Container(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
                  child: Label(
                title: baseInfo.title,
                subTitle: baseInfo.subTitle,
              ));
            }));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
