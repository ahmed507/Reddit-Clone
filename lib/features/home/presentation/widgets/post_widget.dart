import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reddit_clone/core/router/routes.dart';
import 'package:reddit_clone/features/home/domain/entities/post_entity.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_footer.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_header.dart';

class PostWidget extends StatelessWidget {
  final PostEntity post;
  final void Function() onTapComment;
  final void Function() onTapShare;
  final void Function() onTapVoteSave;

  const PostWidget({
    super.key,
    required this.post,
    required this.onTapComment,
    required this.onTapShare,
    required this.onTapVoteSave,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('${Routes.postDetails.toFullPath}/${post.id}');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostHeader(
              subreddit: post.subreddit,
              timeAgo: post.timeAgo,
            ),
            Text(
              post.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 1,
            ),
            const SizedBox(height: 4),
            Text(
              post.content,
              style: const TextStyle(
                  color: Colors.grey, overflow: TextOverflow.ellipsis),
              maxLines: 3,
            ),
            const SizedBox(height: 8),
            PostFooter(
              commentCount: post.commentCount,
              shareCount: post.shareCount,
              likeCount: post.likeCount,
              onTapComment: onTapComment,
              onTapShare: onTapShare,
              onTapVoteSave: onTapVoteSave,
            ),
          ],
        ),
      ),
    );
  }
}
