import 'package:flutter/material.dart';

/// 用于重命名颜色属性
extension ThemeDataColorExtension on ThemeData {
  Color get navBackgroundColor => Color(0xfffd7000);
  Color get backgroundColor => colorScheme.onBackground;

}

/// 用于重命名字体样式属性
extension ThemeDataTextStyleExtension on ThemeData {
  TextStyle get styleLarge => textTheme.displayLarge!;
  TextStyle get styleMedium => textTheme.displayMedium!;
  TextStyle get styleSmall => textTheme.displaySmall!;

  TextStyle get styleTitleLarge => textTheme.titleLarge!;
  TextStyle get styleTitleMedium => textTheme.titleMedium!;
  TextStyle get styleTitleSmall => textTheme.titleSmall!;

  TextStyle get styleBodySmall => textTheme.bodySmall!;
  TextStyle get styleBodyMedium => textTheme.bodyMedium!;
  TextStyle get styleBodyLarge => textTheme.bodyLarge!;
}

