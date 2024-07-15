import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:page_transition/page_transition.dart';
import 'package:reddit_clone/core/common/widgets/base_layout.dart';
import 'package:reddit_clone/core/common/widgets/splash.dart';
import 'package:reddit_clone/core/router/routes.dart';
import 'package:reddit_clone/features/home/presentation/pages/home_screen.dart';
import 'package:reddit_clone/features/home/presentation/pages/latest_screen.dart';
import 'package:reddit_clone/features/home/presentation/pages/popular_screen.dart';
import 'package:reddit_clone/features/home/presentation/pages/watch_screen.dart';
import 'package:reddit_clone/features/home/presentation/widgets/home_header_widget.dart';
import 'package:reddit_clone/features/post/presentation/pages/chat_screen.dart';
import 'package:reddit_clone/features/post/presentation/pages/communities_screen.dart';
import 'package:reddit_clone/features/post/presentation/pages/create_screen.dart';
import 'package:reddit_clone/features/post/presentation/pages/inbox_screen.dart';
import 'package:reddit_clone/features/post/presentation/pages/post_details_screen.dart';
import 'package:reddit_clone/features/post/presentation/pages/video_post_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: Routes.home.toFullPath,
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: Routes.splash.toName,
      path: Routes.splash.toFullPath,
      builder: (context, state) {
        return const Splash();
      },
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        Widget title;
        Widget? action;
        if (state.fullPath == Routes.home.toFullPath ||
            state.fullPath == Routes.latest.toFullPath ||
            state.fullPath == Routes.popular.toFullPath ||
            state.fullPath == Routes.watch.toFullPath) {
          title = const HomeHeaderWidget();
          action = IconButton(
            onPressed: () {},
            icon: const Icon(Bootstrap.search),
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
        return CustomTransitionPage(
          key: state.pageKey,
          transitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            // Change the opacity of the screen using a Curve based on the the animation's
            // value
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
              child: child,
            );
          },
          child: BaseLayout(
            title: title,
            action: action,
            child: child,
          ),
        );
      },
      routes: [
        GoRoute(
          name: Routes.home.toName,
          path: Routes.home.toFullPath,
          builder: (context, state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          name: Routes.popular.toName,
          path: Routes.popular.toFullPath,
          builder: (context, state) {
            return const PopularScreen();
          },
        ),
        GoRoute(
          name: Routes.watch.toName,
          path: Routes.watch.toFullPath,
          builder: (context, state) {
            return const WatchScreen();
          },
        ),
        GoRoute(
          name: Routes.latest.toName,
          path: Routes.latest.toFullPath,
          builder: (context, state) {
            return const LatestScreen();
          },
        ),
        GoRoute(
          name: Routes.communities.toName,
          path: Routes.communities.toFullPath,
          builder: (context, state) {
            return const CommunitiesScreen();
          },
        ),
        GoRoute(
          name: Routes.create.toName,
          path: Routes.create.toFullPath,
          builder: (context, state) {
            return const CreateScreen();
          },
        ),
        GoRoute(
          name: Routes.chat.toName,
          path: Routes.chat.toFullPath,
          builder: (context, state) {
            return const ChatScreen();
          },
        ),
        GoRoute(
          name: Routes.inbox.toName,
          path: Routes.inbox.toFullPath,
          builder: (context, state) {
            return const InboxScreen();
          },
        ),
      ],
    ),
    GoRoute(
      name: Routes.postDetails.toName,
      path: '${Routes.postDetails.toFullPath}/:id',
      pageBuilder: (context, state) {
        final String id = state.pathParameters['id']!;
        return CustomTransitionPage(
          key: state.pageKey,
          transitionDuration: const Duration(seconds: 1),
          transitionsBuilder: ((context, animation, secondaryAnimation, child) {
            return PageTransition(
              child: child,
              type: PageTransitionType.bottomToTop,
              alignment: Alignment.center,
            ).buildTransitions(
              context,
              animation,
              secondaryAnimation,
              child,
            );
          }),
          child: PostDetailsScreen(
            id: id,
          ),
        );
      },
    ),
    GoRoute(
      name: Routes.videoPost.toName,
      path: '${Routes.videoPost.toFullPath}/:id',
      pageBuilder: (context, state) {
        final String id = state.pathParameters['id']!;
        return CustomTransitionPage(
          key: state.pageKey,
          transitionDuration: const Duration(seconds: 1),
          transitionsBuilder: ((context, animation, secondaryAnimation, child) {
            return PageTransition(
              child: child,
              type: PageTransitionType.bottomToTop,
              alignment: Alignment.center,
            ).buildTransitions(
              context,
              animation,
              secondaryAnimation,
              child,
            );
          }),
          child: VideoPostScreen(
            id: id,
          ),
        );
      },
    ),
  ],
);
