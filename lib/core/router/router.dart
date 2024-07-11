import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reddit_clone/core/common/widgets/base_layout.dart';
import 'package:reddit_clone/core/common/widgets/splash.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return BaseLayout(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return Splash();
          },
        ),
      ],
    ),
  ],
);
