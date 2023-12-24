import 'package:bazi/page/HomePage.dart';
import 'package:bazi/page/MyPage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return HomePage();
    },
  ),
  GoRoute(
    path: '/my',
    builder: (BuildContext context, GoRouterState state) {
      return MyPage();
    },
  ),
]);
