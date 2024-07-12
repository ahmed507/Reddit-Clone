import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reddit_clone/features/home/presentation/widgets/vote_toggle_button.dart';
import 'package:reddit_clone/generated/assets.dart';

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
        Row(
          children: [
            const CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage(Assets.imagesDefaultSub),
            ),
            const SizedBox(width: 4),
            Text(subreddit,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(width: 8),
            Text(timeAgo, style: const TextStyle(color: Colors.grey)),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(content, style: const TextStyle(color: Colors.grey)),
        const SizedBox(height: 8),
        Row(
          children: [
            const VoteToggleButtons(),
            const SizedBox(width: 8),
            InkWell(
              onTap: () {},
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.1,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    const Icon(MingCute.chat_3_line),
                    const SizedBox(width: 8),
                    Text('$commentCount',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 4),
                    const Text('Comments',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.1,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    const Icon(MingCute.share_forward_line),
                    const SizedBox(width: 8),
                    Text('$shareCount'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
