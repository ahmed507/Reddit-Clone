import 'package:flutter/material.dart';
import 'package:reddit_clone/generated/assets.dart';

class RightSideNav extends StatelessWidget {
  const RightSideNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 300.0,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF809cde),
              ),
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0),
              curve: Curves.easeInOut,
              child: Image.asset(Assets.imagesDefaultAvatar),
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
