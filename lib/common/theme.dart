import 'package:flutter/material.dart';

ThemeData appThemeData = ThemeData(
  primaryColor: Colors.white,
  disabledColor: const Color(0xffcbced0),
  hintColor: const Color(0xffe2e5e7),
  highlightColor: const Color(0xffa7d500),
  shadowColor: const Color(0xffa0a4a7),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: const Color(0xff242524),
    ),
    displayMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: const Color(0xff242524),
    ),

    titleLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: const Color(0xff707275),
    ),
    titleMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: const Color(0xff242524),
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: const Color(0xff707275),
    ),
    bodyLarge: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.normal,
      color: const Color(0xff242524),
    ),
    bodyMedium: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.normal,
      color: const Color(0xff242524),
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: Colors.white,
    secondary: Color(0xffa7d500),
    background: Color(0xfff3f4f5),
    error: Color(0xffe21a1a),
    onPrimary: Color(0xff242524),
    onError: Colors.white,
    onBackground: Color(0xffe2e5e7),
    onSecondary: Color(0xff707275),
  ).copyWith(background: const Color(0xfff3f4f5)).copyWith(
      error: const Color(0xffe21a1a)),
);