import 'package:bazi/extention/theme/extention_theme.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String title;
  final String? subTitle;
  final TextStyle? titleStyle;
  final TextStyle? subTitleStyle;

  //点击回调
  final GestureTapCallback? onPressed;

  Label({
    required this.title,
    this.titleStyle,

    this.subTitle,
    this.subTitleStyle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    List<Widget> list = [
      Text(
        this.title,
        style: this.titleStyle == null ? theme.styleTitleSmall : this.titleStyle,
      )
    ];
    if (this.subTitle != null) {
      list.add(Text(
        this.subTitle!,
        style: this.subTitleStyle == null ? theme.styleBodySmall: this.subTitleStyle,
      ));
    }

    return Row(
      children: list,
    );
  }
}
