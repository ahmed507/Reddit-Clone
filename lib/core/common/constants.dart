import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

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
}

const redditOrange = Color(0xFFFF4500);
