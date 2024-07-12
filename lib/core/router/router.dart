import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reddit_clone/core/common/widgets/base_layout.dart';
import 'package:reddit_clone/core/common/widgets/splash.dart';
import 'package:reddit_clone/core/router/routes.dart';
import 'package:reddit_clone/features/home/presentation/pages/home_screen.dart';
import 'package:reddit_clone/features/home/presentation/widgets/home_header_widget.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        Widget title;
        Widget? action;
        if (state.fullPath == Routes.home.toFullPath) {
          title = const HomeHeaderWidget();
          action = IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          );
        } else if (state.fullPath == Routes.communities.toFullPath) {
          title = Text(Routes.communities.toName);
        } else if (state.fullPath == Routes.create.toFullPath) {
          title = Text(Routes.create.toName);
        } else if (state.fullPath == Routes.chat.toFullPath) {
          title = Text(Routes.chat.toName);
        } else if (state.fullPath == Routes.inbox.toFullPath) {
          title = Text(Routes.inbox.toName);
        } else {
          title = Text(Routes.home.toName);
        }
        return BaseLayout(
          child: child,
          title: title,
          action: action,
        );
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return Splash();
          },
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) {
            return HomeScreen();
          },
        ),
      ],
    ),
  ],
);
