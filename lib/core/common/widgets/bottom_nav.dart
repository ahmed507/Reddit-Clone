import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: 'Communities',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Create',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Inbox',
        ),
      ],
      // currentIndex: selectedIndex,
      // onTap: onItemTapped,
    );
  }
}
