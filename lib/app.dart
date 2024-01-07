
import 'package:bazi/page/index/index_page.dart';
import 'package:flutter/material.dart';
import 'package:bazi/extention/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      home: IndexPage(),
    );
  }
}
