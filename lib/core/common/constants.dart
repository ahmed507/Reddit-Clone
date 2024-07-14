import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reddit_clone/core/router/routes.dart';

enum HomeHeader {
  home,
  popular,
  watch,
  latest,
}

extension HomeHeaderExtension on HomeHeader {
  String get name {
    switch (this) {
      case HomeHeader.home:
        return 'Home';
      case HomeHeader.popular:
        return 'Popular';
      case HomeHeader.watch:
        return 'Watch';
      case HomeHeader.latest:
        return 'Latest';
    }
  }

  IconData get icon {
    switch (this) {
      case HomeHeader.home:
        return MingCute.home_6_fill;
      case HomeHeader.popular:
        return MingCute.arrow_right_up_circle_line;
      case HomeHeader.watch:
        return Icons.live_tv_rounded;
      case HomeHeader.latest:
        return Icons.new_releases;
    }
  }

  String get route {
    switch (this) {
      case HomeHeader.home:
        return Routes.home.toFullPath;
      case HomeHeader.popular:
        return Routes.popular.toFullPath;
      case HomeHeader.watch:
        return Routes.watch.toFullPath;
      case HomeHeader.latest:
        return Routes.latest.toFullPath;
    }
  }
}

const redditOrange = Color(0xFFFF4500);
