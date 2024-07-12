import 'package:flutter/material.dart';
import 'package:reddit_clone/core/common/widgets/bottom_nav.dart';
import 'package:reddit_clone/core/common/widgets/left_side_nav.dart';
import 'package:reddit_clone/generated/assets.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;
  final Widget title;
  final Widget? action;
  final bool showAppBar;

  const BaseLayout({
    super.key,
    required this.child,
    required this.title,
    this.action,
    this.showAppBar = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !showAppBar
          ? null
          : AppBar(
              actions: [
                action ?? const SizedBox(),
                Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(Assets.imagesDefaultAvatar),
                      ),
                    ),
                  );
                }),
              ],
              leading: Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                );
              }),
              title: title,
            ),
      drawer: LeftSideNav(),
      endDrawer: LeftSideNav(),
      body: child,
      bottomNavigationBar: const BottomNav(),
    );
  }
}
