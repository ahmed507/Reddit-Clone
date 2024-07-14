import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reddit_clone/features/home/presentation/widgets/vote_toggle_button.dart';

class PostFooter extends StatelessWidget {
  final int commentCount;
  final int shareCount;
  final int likeCount;
  final void Function() onTapComment;
  final void Function() onTapShare;
  final void Function() onTapVoteSave;

  const PostFooter({
    super.key,
    required this.commentCount,
    required this.shareCount,
    required this.onTapComment,
    required this.onTapShare,
    required this.onTapVoteSave,
    required this.likeCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        VoteToggleButtons(
          likeCount: likeCount,
          onTapVoteSave: onTapVoteSave,
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: onTapComment,
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
                Text(
                  '$commentCount Comments',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: onTapShare,
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
                shareCount > 0
                    ? Text(
                        ' $shareCount',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 1,
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
