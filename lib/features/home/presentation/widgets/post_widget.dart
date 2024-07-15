import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reddit_clone/core/router/routes.dart';
import 'package:reddit_clone/features/home/domain/entities/post_entity.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_footer.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_header.dart';
import 'package:video_player/video_player.dart';

class PostWidget extends StatefulWidget {
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
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  VideoPlayerController? controller;

  @override
  void initState() {
    super.initState();
    if (widget.post.type == PostType.video) {
      controller = VideoPlayerController.networkUrl(
        Uri.parse(widget.post.content),
      )..initialize().then((_) {
          setState(() {});
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.post.type == PostType.text) {
          context.push('${Routes.postDetails.toFullPath}/${widget.post.id}');
        } else if (widget.post.type == PostType.video) {
          context.push('${Routes.videoPost.toFullPath}/${widget.post.id}');
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostHeader(
              subreddit: widget.post.subreddit,
              timeAgo: widget.post.timeAgo,
            ),
            Text(
              widget.post.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 1,
            ),
            const SizedBox(height: 4),
            widget.post.type == PostType.text
                ? Text(
                    widget.post.content,
                    style: const TextStyle(
                        color: Colors.grey, overflow: TextOverflow.ellipsis),
                    maxLines: 3,
                  )
                : videoCard(controller!, context),
            const SizedBox(height: 8),
            PostFooter(
              commentCount: widget.post.commentCount,
              shareCount: widget.post.shareCount,
              likeCount: widget.post.likeCount,
              onTapComment: widget.onTapComment,
              onTapShare: widget.onTapShare,
              onTapVoteSave: widget.onTapVoteSave,
            ),
          ],
        ),
      ),
    );
  }

  Widget videoCard(VideoPlayerController controller, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (controller.value.isPlaying) {
          controller.pause();
        } else {
          controller.play();
        }
      },
      child: Container(
        alignment: Alignment.center,
        child: FittedBox(
          fit: BoxFit.cover,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.6,
            child: VideoPlayer(
              controller,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
