import 'package:flutter/material.dart';

/// 用于重命名颜色属性
extension ThemeDataColorExtension on ThemeData {
  Color get navBackgroundColor => colorScheme.onBackground;
  Color get backgroundColor => colorScheme.onBackground;

}

/// 用于重命名字体样式属性
extension ThemeDataTextStyleExtension on ThemeData {
  TextStyle get navBarTitleStyle => textTheme.titleLarge!;
  TextStyle get bodyStyle => textTheme.bodySmall!;
}

