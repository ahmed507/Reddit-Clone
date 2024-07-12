import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reddit_clone/core/router/routes.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(MingCute.home_6_fill),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(EvaIcons.people_outline),
          label: 'Communities',
        ),
        BottomNavigationBarItem(
          icon: Icon(EvaIcons.plus),
          label: 'Create',
        ),
        BottomNavigationBarItem(
          icon: Icon(EvaIcons.message_circle_outline),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(EvaIcons.bell),
          label: 'Inbox',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        // Navigate to Home
        context.go(Routes.home.toFullPath);
        break;
      case 1:
        // Navigate to Communities
        context.go(Routes.communities.toFullPath);
        break;
      case 2:
        // Navigate to Create
        context.go(Routes.create.toFullPath);
        break;
      case 3:
        // Navigate to Chat
        context.go(Routes.chat.toFullPath);
        break;
      case 4:
        // Navigate to Inbox
        context.go(Routes.inbox.toFullPath);
        break;
    }
  }
}
