import 'package:bazi/extention/theme/extention_theme.dart';
import 'package:bazi/model/destiny_predict.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EightCharPage extends StatefulWidget {
  DestinyPredict destinyPredict;
  EightCharPage({required this.destinyPredict});

  @override
  _EightCharPageState createState() =>
      _EightCharPageState(destinyPredict: this.destinyPredict);
}

class _EightCharPageState extends State<EightCharPage>
    with AutomaticKeepAliveClientMixin {
  DestinyPredict destinyPredict;
  final int listItemCount = 2;

  _EightCharPageState({required this.destinyPredict});
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
    final double rowTextGap = 10.0;

    return Padding(
      padding: EdgeInsets.only(top: 6),
      child: Row(
        children: [
          SizedBox(width: rowTextGap), // 添加一些间距
          Container(
              width: 70.0,
              height: 70.0,
              child: SvgPicture.asset('images/default-avatar.svg')),
          SizedBox(width: rowTextGap), // 添加一些间距

          // 右侧文本
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                // 第一行文本
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: rowTextGap),
                    Expanded(
                        child: Row(
                      children: [
                        Text(
                          '姓名：',
                          style: Theme.of(context).styleTitleSmall,
                        ),
                        Text(
                          this.destinyPredict.baseInfo.name,
                          style: Theme.of(context).styleBodySmall,
                        ),
                      ],
                    )),
                    Expanded(
                        child: Row(
                      children: [
                        Text(
                          '性别：',
                          style: Theme.of(context).styleTitleSmall,
                        ),
                        Text(
                          this.destinyPredict.baseInfo.gender,
                          style: Theme.of(context).styleBodySmall,
                        ),
                      ],
                    ))
                  ],
                ),

                // 添加一些间距
                SizedBox(height: rowTextGap),

                // 第二行文本
                Row(
                  children: [
                    Text(
                      '阳历：',
                      style: Theme.of(context).styleTitleSmall,
                    ),
                    Text(
                      this.destinyPredict.baseInfo.solar,
                      style: Theme.of(context).styleBodySmall,
                    ),
                  ],
                ),

                // 添加一些间距
                SizedBox(height: rowTextGap),
                // 第三行文本

                Row(
                  children: [
                    Text(
                      '阴历：',
                      style: Theme.of(context).styleTitleSmall,
                    ),
                    Text(
                      this.destinyPredict.baseInfo.lunar,
                      style: Theme.of(context).styleBodySmall,
                    ),
                  ],
                ),
                SizedBox(height: rowTextGap),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildBaZi(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      // defaultColumnWidth: const FixedColumnWidth(80),

      children: [
        buildSiZhu(context),
        buildShiShen(context),
        buildGan(context),
        buildZhi(context),
        buildCangGan(context),
        buildCangGanShiShen(context),
        buildNaYin(context),
        buildXingYun(context),
        buildXunKong(context),
        buildShenSha(context),
      ],
    );
  }

  buildSiZhu(BuildContext context) {
    return TableRow(children: [
      buildItem(context, '四柱'),
      buildItem(context, '年柱'),
      buildItem(context, '月柱'),
      buildItem(context, '日柱'),
      buildItem(context, '时柱')
    ]);
  }

  buildShiShen(BuildContext context) {
    return TableRow(children: [
      buildItem(context, '主星'),
      buildItem(context, this.destinyPredict.eightChar.year.ganShiShen),
      buildItem(context, this.destinyPredict.eightChar.month.ganShiShen),
      buildItem(context, this.destinyPredict.eightChar.day.ganShiShen),
      buildItem(context, this.destinyPredict.eightChar.hour.ganShiShen)
    ]);
  }

  buildGan(BuildContext context) {
    TextStyle style = Theme.of(context).styleSiZhu;
    return TableRow(children: [
      buildItem(context, '天干'),
      buildItem(context, this.destinyPredict.eightChar.year.gan, style: style),
      buildItem(context, this.destinyPredict.eightChar.month.gan, style: style),
      buildItem(context, this.destinyPredict.eightChar.day.gan, style: style),
      buildItem(context, this.destinyPredict.eightChar.hour.gan, style: style)
    ]);
  }

  buildZhi(BuildContext context) {
    TextStyle style = Theme.of(context).styleSiZhu;
    return TableRow(children: [
      buildItem(context, '地支'),
      buildItem(context, this.destinyPredict.eightChar.year.zhi, style: style),
      buildItem(context, this.destinyPredict.eightChar.month.zhi, style: style),
      buildItem(context, this.destinyPredict.eightChar.day.zhi, style: style),
      buildItem(context, this.destinyPredict.eightChar.hour.zhi, style: style)
    ]);
  }

  buildCangGan(BuildContext context) {
    return TableRow(children: [
      buildItem(context, '藏干'),
      buildItem(context, this.destinyPredict.eightChar.year.cang.join('   ')),
      buildItem(context, this.destinyPredict.eightChar.month.cang.join('   ')),
      buildItem(context, this.destinyPredict.eightChar.day.cang.join('   ')),
      buildItem(context, this.destinyPredict.eightChar.hour.cang.join('   '))
    ]);
  }

  buildCangGanShiShen(BuildContext context) {
    return TableRow(children: [
      buildItem(context, '副星'),
      buildItem(
          context, this.destinyPredict.eightChar.year.zhiShiShen.join('')),
      buildItem(
          context, this.destinyPredict.eightChar.month.zhiShiShen.join('')),
      buildItem(context, this.destinyPredict.eightChar.day.zhiShiShen.join('')),
      buildItem(
          context, this.destinyPredict.eightChar.hour.zhiShiShen.join('')),
    ]);
  }

  buildNaYin(BuildContext context) {
    return TableRow(children: [
      buildItem(context, '纳音'),
      buildItem(context, this.destinyPredict.eightChar.year.naYin),
      buildItem(context, this.destinyPredict.eightChar.month.naYin),
      buildItem(context, this.destinyPredict.eightChar.day.naYin),
      buildItem(context, this.destinyPredict.eightChar.hour.naYin)
    ]);
  }

  buildXingYun(BuildContext context) {
    return TableRow(children: [
      buildItem(context, '星运'),
      buildItem(context, this.destinyPredict.eightChar.year.naYin),
      buildItem(context, this.destinyPredict.eightChar.month.naYin),
      buildItem(context, this.destinyPredict.eightChar.day.naYin),
      buildItem(context, this.destinyPredict.eightChar.hour.naYin)
    ]);
  }

  buildXunKong(BuildContext context) {
    return TableRow(children: [
      buildItem(context, '空亡'),
      buildItem(context, this.destinyPredict.eightChar.year.xunKong),
      buildItem(context, this.destinyPredict.eightChar.month.xunKong),
      buildItem(context, this.destinyPredict.eightChar.day.xunKong),
      buildItem(context, this.destinyPredict.eightChar.hour.xunKong)
    ]);
  }

  buildShenSha(BuildContext context) {
    return TableRow(children: [
      buildItem(context, '神煞'),
      buildItem(
          context, this.destinyPredict.eightChar.year.zhiShiShen.join('')),
      buildItem(
          context, this.destinyPredict.eightChar.month.zhiShiShen.join('')),
      buildItem(context, this.destinyPredict.eightChar.day.zhiShiShen.join('')),
      buildItem(
          context, this.destinyPredict.eightChar.hour.zhiShiShen.join('')),
    ]);
  }

  buildItem(BuildContext context, String content,
      {Color? backgroundColor, TextStyle? style}) {
    backgroundColor = Color.fromARGB(255, 236, 236, 231);

    if (style == null) {
      style = Theme.of(context).styleBodySmall;
    }

    return Container(
      height: 40,
      alignment: Alignment.center,
      color: backgroundColor,
      child: Text(
        content,
        style: style,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
