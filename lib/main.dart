import 'package:bazi/page/HomePage.dart';
import 'package:bazi/page/MyPage.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: BottomTabBarController(),
    );
  }
}

class BottomTabBarController extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomTabBarControllerState();
  }
}

/**
 * 配置底部导航页面
 */
class BottomTabBarControllerState extends State<BottomTabBarController> {
  int selectPageIndex = 0;
  final pages = [HomePage(), MyPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Convex Bottom Bar'),
      ),
      body: pages[selectPageIndex],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.person, title: '首页'),
          TabItem(icon: Icons.favorite, title: '用户中心'),
        ],
        initialActiveIndex: selectPageIndex,
        onTap: (int index) {
          setState(() {
            selectPageIndex = index;
          });
        },
      ),
    );
  }
}
