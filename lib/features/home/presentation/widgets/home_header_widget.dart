import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reddit_clone/core/common/constants.dart';
import 'package:reddit_clone/generated/assets.dart';

class HomeHeaderWidget extends StatefulWidget {
  const HomeHeaderWidget({super.key});

  @override
  State<HomeHeaderWidget> createState() => _HomeHeaderWidgetState();
}

class _HomeHeaderWidgetState extends State<HomeHeaderWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        setState(() {
          _isExpanded = false;
        });
      },
      onOpened: () {
        setState(() {
          _isExpanded = true;
        });
      },
      onCanceled: () {
        setState(() {
          _isExpanded = false;
        });
      },
      offset: const Offset(-1, 40),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: HomeHeader.home.name,
          child: _menuItem(
            title: HomeHeader.home.name,
            icon: HomeHeader.home.icon,
          ),
        ),
        PopupMenuItem<String>(
          value: HomeHeader.popular.name,
          child: _menuItem(
            title: HomeHeader.popular.name,
            icon: HomeHeader.popular.icon,
          ),
        ),
        PopupMenuItem<String>(
          value: HomeHeader.watch.name,
          child: _menuItem(
            title: HomeHeader.watch.name,
            icon: HomeHeader.watch.icon,
          ),
        ),
        PopupMenuItem<String>(
          value: HomeHeader.latest.name,
          child: _menuItem(
            title: HomeHeader.latest.name,
            icon: HomeHeader.latest.icon,
          ),
        ),
      ],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            Assets.iconsRedditWordmark,
            width: 70,
          ),
          Icon(
            _isExpanded ? EvaIcons.chevron_up : EvaIcons.chevron_down,
          ),
        ],
      ),
    );
  }

  Widget _menuItem({
    required String title,
    required IconData icon,
  }) =>
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            icon,
          ),
          const SizedBox(width: 8),
          Text(title),
        ],
      );
}
