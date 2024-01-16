import 'package:bazi/extention/theme/extention_theme.dart';
import 'package:bazi/model/destiny_predict.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';

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

    return Row(
      children: [
        SizedBox(width: rowTextGap), // 添加一些间距
        Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://img1.baidu.com/11it/u=1238791605,3480162438&fm=253&fmt=auto&app=120&f=JPEG?w=1422&h=800'), // 替换为实际的头像链接
            ),
          ),
        ),
        SizedBox(width: rowTextGap), // 添加一些间距

        // 右侧文本
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 第一行文本
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        '标题1',
                        style: Theme.of(context).styleTitleSmall,
                      ),
                      Text(
                        '标题1文本',
                        style: Theme.of(context).styleBodySmall,
                      ),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        '标题1',
                        style: Theme.of(context).styleTitleSmall,
                      ),
                      Text(
                        '标题1文本',
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
                    '标题2',
                    style: Theme.of(context).styleTitleSmall,
                  ),
                  Text(
                    '内容2',
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
                    '标题3',
                    style: Theme.of(context).styleTitleSmall,
                  ),
                  Text(
                    '内容3',
                    style: Theme.of(context).styleBodySmall,
                  ),
                ],
              ),
              SizedBox(height: rowTextGap),
            ],
          ),
        ),
      ],
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
      buildItem(context, 'sizhu'),
      buildItem(context, 'nian'),
      buildItem(context, 'yue'),
      buildItem(context, 'ri'),
      buildItem(context, 'shi')
    ]);
  }

  buildShiShen(BuildContext context) {
    return TableRow(children: [
      buildItem(context, 'shishen'),
      buildItem(context, this.destinyPredict.eightChar.yearGanShiShen),
      buildItem(context, this.destinyPredict.eightChar.monthGanShiShen),
      buildItem(context, this.destinyPredict.eightChar.dayGanShiShen),
      buildItem(context, this.destinyPredict.eightChar.timeGanShiShen)
    ]);
  }

  buildGan(BuildContext context) {
    TextStyle style = Theme.of(context).styleSiZhu;
    return TableRow(children: [
      buildItem(context, 'tiangan'),
      buildItem(context, this.destinyPredict.eightChar.yearGan, style: style),
      buildItem(context, this.destinyPredict.eightChar.monthGan, style: style),
      buildItem(context, this.destinyPredict.eightChar.dayGan, style: style),
      buildItem(context, this.destinyPredict.eightChar.timeGan, style: style)
    ]);
  }

  buildZhi(BuildContext context) {
    TextStyle style = Theme.of(context).styleSiZhu;
    return TableRow(children: [
      buildItem(context, 'dizhi'),
      buildItem(context, this.destinyPredict.eightChar.yearZhi, style: style),
      buildItem(context, this.destinyPredict.eightChar.monthZhi, style: style),
      buildItem(context, this.destinyPredict.eightChar.dayZhi, style: style),
      buildItem(context, this.destinyPredict.eightChar.timeZhi, style: style)
    ]);
  }

  buildCangGan(BuildContext context) {
    return TableRow(children: [
      buildItem(context, 'canggan'),
      buildItem(context, this.destinyPredict.eightChar.yearHideGan.join('   ')),
      buildItem(
          context, this.destinyPredict.eightChar.monthHideGan.join('   ')),
      buildItem(context, this.destinyPredict.eightChar.dayHideGan.join('   ')),
      buildItem(context, this.destinyPredict.eightChar.timeHideGan.join('   '))
    ]);
  }

  buildCangGanShiShen(BuildContext context) {
    return TableRow(children: [
      buildItem(context, 'fuxing'),
      buildItem(context, this.destinyPredict.eightChar.yearZhiShiShen.join('')),
      buildItem(
          context, this.destinyPredict.eightChar.monthZhiShiShen.join('')),
      buildItem(context, this.destinyPredict.eightChar.dayZhiShiShen.join('')),
      buildItem(context, this.destinyPredict.eightChar.timeZhiShiShen.join('')),
    ]);
  }

  buildNaYin(BuildContext context) {
    return TableRow(children: [
      buildItem(context, 'nayin'),
      buildItem(context, this.destinyPredict.eightChar.yearNaYin),
      buildItem(context, this.destinyPredict.eightChar.monthNaYin),
      buildItem(context, this.destinyPredict.eightChar.dayNaYin),
      buildItem(context, this.destinyPredict.eightChar.timeNaYin)
    ]);
  }

  buildXingYun(BuildContext context) {
    return TableRow(children: [
      buildItem(context, 'xingyun'),
      buildItem(context, this.destinyPredict.eightChar.yearNaYin),
      buildItem(context, this.destinyPredict.eightChar.monthNaYin),
      buildItem(context, this.destinyPredict.eightChar.dayNaYin),
      buildItem(context, this.destinyPredict.eightChar.timeNaYin)
    ]);
  }

  buildXunKong(BuildContext context) {
    return TableRow(children: [
      buildItem(context, 'kongwang'),
      buildItem(context, this.destinyPredict.xunKongYear),
      buildItem(context, this.destinyPredict.xunKongMonth),
      buildItem(context, this.destinyPredict.xunKongDay),
      buildItem(context, this.destinyPredict.xunKongHour)
    ]);
  }

  buildShenSha(BuildContext context) {
    return TableRow(children: [
      buildItem(context, 'shensha'),
      buildItem(context, this.destinyPredict.xunKongMonth),
      buildItem(context, this.destinyPredict.xunKongMonth),
      buildItem(context, this.destinyPredict.xunKongDay),
      buildItem(context, this.destinyPredict.xunKongHour)
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
