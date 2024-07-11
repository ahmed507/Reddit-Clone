import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          value: 'Home',
          child: _menuItem(
            title: 'Home',
            icon: Icons.home,
          ),
        ),
        PopupMenuItem<String>(
          value: 'Popular',
          child: _menuItem(
            title: 'Popular',
            icon: Icons.trending_up_outlined,
          ),
        ),
        PopupMenuItem<String>(
          value: 'Watch',
          child: _menuItem(
            title: 'Watch',
            icon: Icons.live_tv_rounded,
          ),
        ),
        PopupMenuItem<String>(
          value: 'Latest',
          child: _menuItem(
            title: 'Latest',
            icon: Icons.new_releases,
          ),
        ),
      ],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            Assets.iconsRedditWordmark,
            width: 80,
          ),
          Icon(
            _isExpanded
                ? Icons.arrow_drop_up_outlined
                : Icons.arrow_drop_down_outlined,
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
