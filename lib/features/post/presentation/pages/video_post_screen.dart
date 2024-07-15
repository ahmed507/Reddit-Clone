import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reddit_clone/core/common/constants.dart';
import 'package:reddit_clone/core/common/widgets/splash.dart';
import 'package:reddit_clone/core/injection/injection.dart';
import 'package:reddit_clone/features/home/presentation/manager/home/home_bloc.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_footer.dart';
import 'package:reddit_clone/features/home/presentation/widgets/video_player_control_panel.dart';
import 'package:reddit_clone/features/post/domain/entities/user_entity.dart';
import 'package:reddit_clone/generated/assets.dart';
import 'package:video_player/video_player.dart';

class VideoPostScreen extends StatelessWidget {
  final String id;
  VideoPlayerController? controller;
  bool _initialized = false;

  VideoPostScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<HomeBloc>()
        ..add(
          HomeEvent.fetchPostDetail(postId: id),
        ),
      child: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) =>
            previous.isLoading != current.isLoading ||
            previous.postDetail != current.postDetail ||
            previous.failure != current.failure,
        builder: (context, state) {
          if (state.isLoading || state.postDetail == null) {
            return const Splash();
          }
          if (state.failure != null) {
            return Scaffold(
              body: Center(
                child: Text(
                  state.failure!.maybeWhen(
                    serverError: (message, code) => message ?? 'Server Error',
                    orElse: () => 'Unknown Failure',
                  ),
                ),
              ),
            );
          }
          if (!_initialized) {
            controller = VideoPlayerController.networkUrl(
              Uri.parse(state.postDetail!.content),
            )..initialize().then((_) {
                _initialized = true;
              });
          }

          return Scaffold(
            body: videoCard(
              context,
              header(
                context,
                state.postDetail!.subreddit,
              ),
              footerUp(
                context,
                state.postDetail!.user,
                state.postDetail!.title,
              ),
              PostFooter(
                onTapVoteSave: () {},
                onTapComment: () {},
                likeCount: state.postDetail!.likeCount,
                shareCount: state.postDetail!.shareCount,
                commentCount: state.postDetail!.commentCount,
                onTapShare: () {},
              ),
              controller,
            ),
          );
        },
      ),
    );
  }

  Widget videoCard(
    BuildContext context,
    Widget header,
    Widget footerUp,
    Widget footerDown,
    VideoPlayerController? controller,
  ) {
    return JkVideoControlPanel(
      controller: controller!,
      header: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: header,
        ),
      ),
      footerUp: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: footerUp,
        ),
      ),
      footerDown: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: footerDown,
        ),
      ),
    );
  }

  Widget header(
    BuildContext context,
    String subreddit,
  ) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Bootstrap.x, size: 30),
          onPressed: () {
            context.pop();
          },
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 14,
          backgroundImage: AssetImage(Assets.imagesDefaultSub),
        ),
        const SizedBox(width: 4),
        Text(subreddit, style: const TextStyle(fontWeight: FontWeight.bold)),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }

  Widget footerUp(
    BuildContext context,
    UserEntity user,
    String title,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CachedNetworkImage(
              imageUrl: user.avatar,
              imageBuilder: (context, imageProvider) => Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.cover),
                ),
              ),
              placeholder: (context, url) => const CircularProgressIndicator(
                color: redditOrange,
              ),
              errorWidget: (context, url, error) =>
                  Image.asset(Assets.imagesDefaultAvatar),
            ),
            const SizedBox(width: 8),
            Text(
              'u/${user.name}',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
