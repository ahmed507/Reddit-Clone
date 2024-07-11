import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reddit_clone/core/common/widgets/bottom_nav.dart';
import 'package:reddit_clone/features/home/presentation/widgets/home_header_widget.dart';
import 'package:reddit_clone/generated/assets.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;

  const BaseLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: HomeHeaderWidget(),
      ),
      body: child,
      bottomNavigationBar: const BottomNav(),
    );
  }
}
