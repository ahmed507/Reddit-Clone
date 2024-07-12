import 'package:flutter/material.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        color: Colors.white12,
        height: 0.1,
      ),
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      itemBuilder: (context, index) {
        return PostWidget(
          subreddit: 'r/FlutterDev',
          timeAgo: '1h',
          title: 'Flutter is awesome!',
          content: 'This is a post content',
          commentCount: 10,
          shareCount: 5,
        );
      },
    );
  }
}
