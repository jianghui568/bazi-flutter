
import 'package:bazi/extention/theme/extention_theme.dart';
import 'package:flutter/material.dart';

class AppBarBuilder{
  static AppBar build(BuildContext context,String title, {Color? backgroundColor}) {
    return AppBar(
      centerTitle: true,
      title:Text(title,
        style: Theme.of(context).titleLargeStyle,),
      backgroundColor: backgroundColor == null ?  Theme.of(context).navBackgroundColor : backgroundColor,
    );
  }
}