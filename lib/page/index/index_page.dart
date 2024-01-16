import 'package:bazi/widget/AppBarBuilder.dart';
import 'package:flutter/material.dart';
import 'package:bazi/extention/theme/theme.dart';
import 'package:bazi/page/my/my_page.dart';
import 'package:bazi/page/pai/pai_page.dart';
import 'package:bazi/page/record/record_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final _bottomDataList = [
    {
      'title': '11',
      'icon': 'images/bottom/pai.svg',
    },
    {
      'title': '22',
      'icon': 'images/bottom/pai.svg',
    },
    {
      'title': '33',
      'icon': 'images/bottom/pai.svg',
    },
  ];
  PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            if (mounted)
              setState(() {
                _currentIndex = index;
              });
            _pageController.jumpToPage(index);
          },
          items: [
            _generateBottomBarItem(0),
            _generateBottomBarItem(1),
            _generateBottomBarItem(2),
          ]),
      body: _currentPage(),

      resizeToAvoidBottomInset: false,
    );
  }

  // 底部导航对应的页面
  Widget _currentPage() {
    var _pages = [
      PaiPage(),
      RecordPage(),
      MyPage(),
    ];
    return PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: _pages.length,
        itemBuilder: (context, index) => _pages[index]);
  }

  Widget _bottomIcon(path) {
    return SvgPicture.asset(
      path,
      height: 24,
      width: 24,
    );
    return Padding(
        padding: EdgeInsets.only(bottom: 4),
        child: Image.asset(
          path,
          width: 25,
          height: 25,
          repeat: ImageRepeat.noRepeat,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        ));
  }

  BottomNavigationBarItem _generateBottomBarItem(index) {
    final bottomData = _bottomDataList[index];
    return BottomNavigationBarItem(
        label: bottomData['title']!, icon: _bottomIcon(bottomData['icon']!));
  }
}
