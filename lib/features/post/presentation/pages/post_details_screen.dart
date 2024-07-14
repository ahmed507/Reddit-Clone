import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reddit_clone/core/common/constants.dart';
import 'package:reddit_clone/core/common/widgets/right_side_nav.dart';
import 'package:reddit_clone/core/common/widgets/splash.dart';
import 'package:reddit_clone/core/injection/injection.dart';
import 'package:reddit_clone/features/home/presentation/manager/home/home_bloc.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_footer.dart';
import 'package:reddit_clone/features/home/presentation/widgets/vote_toggle_button.dart';
import 'package:reddit_clone/generated/assets.dart';

class PostDetailsScreen extends StatelessWidget {
  final String id;

  const PostDetailsScreen({super.key, required this.id});

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

          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Bootstrap.x, size: 30),
                onPressed: () {
                  context.pop();
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(Bootstrap.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Bootstrap.sliders),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
                Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(Assets.imagesDefaultAvatar),
                      ),
                    ),
                  );
                }),
              ],
            ),
            endDrawer: const RightSideNav(),
            body: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white12.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          CachedNetworkImage(
                            imageUrl: state.postDetail!.user.avatar,
                            imageBuilder: (context, imageProvider) => Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: imageProvider, fit: BoxFit.cover),
                              ),
                            ),
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(
                              color: redditOrange,
                            ),
                            errorWidget: (context, url, error) =>
                                Image.asset(Assets.imagesDefaultAvatar),
                          ),
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'r/${state.postDetail!.subreddit}',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'u/${state.postDetail!.user.name} • ${state.postDetail!.timeAgo}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.grey,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        state.postDetail!.title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        state.postDetail!.content,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 8),
                      PostFooter(
                        commentCount: 10,
                        shareCount: 5,
                        likeCount: 20,
                        onTapVoteSave: () {},
                        onTapComment: () {},
                        onTapShare: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                      color: Colors.white12,
                      height: 0.1,
                    ),
                    itemCount: state.postDetail!.comments.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).appBarTheme.backgroundColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white12.withOpacity(0.05),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: state
                                      .postDetail!.comments[index].user.avatar,
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(
                                    color: redditOrange,
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Image.asset(Assets.imagesDefaultAvatar),
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          state.postDetail!.comments[index].user
                                              .name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                color: Colors.white70,
                                              ),
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          state.postDetail!.comments[index]
                                              .timeAgo,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                color: Colors.grey,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      state.postDetail!.comments[index].user
                                          .nickname,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Colors.white70,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              state.postDetail!.comments[index].content,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.more_vert),
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                IconButton(
                                  icon: const Icon(Bootstrap.reply),
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                VoteToggleButtons(
                                    likeCount: state
                                        .postDetail!.comments[index].likeCount,
                                    onTapVoteSave: () {}),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 8),
                // add comment
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).appBarTheme.backgroundColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white12.withOpacity(0.05),
                              ),
                            ],
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Add a comment',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Colors.white12.withOpacity(0.05),
                          ),
                        ),
                        icon: const Icon(EvaIcons.chevron_down, size: 38),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
