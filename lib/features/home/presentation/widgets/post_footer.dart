import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reddit_clone/features/home/presentation/widgets/vote_toggle_button.dart';

class PostFooter extends StatelessWidget {
  final int commentCount;
  final int shareCount;
  final int likeCount;

  const PostFooter({
    super.key,
    required this.commentCount,
    required this.shareCount,
    this.likeCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        VoteToggleButtons(
          likeCount: likeCount,
        ),
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
    );
  }
}
