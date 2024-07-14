import 'package:flutter/material.dart';
import 'package:reddit_clone/generated/assets.dart';

class PostHeader extends StatelessWidget {
  final String subreddit;
  final String? timeAgo;

  const PostHeader({
    super.key,
    required this.subreddit,
    this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 14,
          backgroundImage: AssetImage(Assets.imagesDefaultSub),
        ),
        const SizedBox(width: 4),
        Text(subreddit, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(width: 8),
        timeAgo == null
            ? const SizedBox()
            : Text(timeAgo!, style: const TextStyle(color: Colors.grey)),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
