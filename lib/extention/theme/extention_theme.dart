import 'package:flutter/material.dart';

/// 用于重命名颜色属性
extension ThemeDataColorExtension on ThemeData {
  Color get navBackgroundColor => Color(0xfffd7000);
  Color get backgroundColor => colorScheme.onBackground;

}

/// 用于重命名字体样式属性
extension ThemeDataTextStyleExtension on ThemeData {
  TextStyle get titleLargeStyle => textTheme.titleLarge!;
  TextStyle get titleMediumStyle => textTheme.titleMedium!;
  TextStyle get titleSmallStyle => textTheme.titleSmall!;
  TextStyle get bodyStyle => textTheme.bodySmall!;
}

