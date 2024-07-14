import 'package:flutter/material.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_footer.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_header.dart';

class PostWidget extends StatelessWidget {
  final String subreddit;
  final String timeAgo;
  final String title;
  final String content;
  final int commentCount;
  final int shareCount;

  const PostWidget({
    super.key,
    required this.subreddit,
    required this.timeAgo,
    required this.title,
    required this.content,
    required this.commentCount,
    required this.shareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostHeader(
          subreddit: subreddit,
          timeAgo: timeAgo,
        ),
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(content, style: const TextStyle(color: Colors.grey)),
        const SizedBox(height: 8),
        PostFooter(
          commentCount: commentCount,
          shareCount: shareCount,
        ),
      ],
    );
  }
}
