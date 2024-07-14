import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/features/home/data/models/video.dart';
import 'package:reddit_clone/features/home/presentation/manager/watch_bloc.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_footer.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_header.dart';
import 'package:video_player/video_player.dart';

class WatchScreen extends StatefulWidget {
  const WatchScreen({super.key});

  @override
  _WatchScreenState createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WatchBloc()..add(const WatchEvent.loadVideos()),
      child: BlocBuilder<WatchBloc, WatchState>(
        builder: (context, state) {
          if (state.videos.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }
          return Scaffold(
            backgroundColor:
                state.actualScreen == 0 ? Colors.black : Colors.white,
            body: PageView.builder(
              controller: PageController(
                initialPage: 0,
                viewportFraction: 1,
              ),
              itemCount: state.videos.length,
              onPageChanged: (index) {
                print('antaar $index');
                index = index % (state.videos.length);
                context
                    .read<WatchBloc>()
                    .add(WatchEvent.changeVideo(index: index));
              },
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                index = index % (state.videos.length);
                return feedVideos(
                  index,
                  context,
                  state,
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget feedVideos(int index, BuildContext context, WatchState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white12,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  videoCard(state.videos[index], context),
                  SafeArea(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: PostHeader(
                        subreddit: state.videos[state.prevVideo + 1].subReddit,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PostFooter(
            commentCount: state.videos[state.prevVideo + 1].commentsNum,
            shareCount: state.videos[state.prevVideo + 1].sharesNum,
            likeCount: state.videos[state.prevVideo + 1].likesNum,
          ),
        ],
      ),
    );
  }

  Widget videoCard(Video video, BuildContext context) {
    return Stack(
      children: [
        video.controller != null &&
                !context.watch<WatchBloc>().state.isLoading &&
                !context.watch<WatchBloc>().state.hasError
            ? GestureDetector(
                onTap: () {
                  if (video.controller!.value.isPlaying) {
                    video.controller?.pause();
                  } else {
                    video.controller?.play();
                  }
                },
                child: SizedBox.expand(
                    child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: VideoPlayer(video.controller!),
                  ),
                )),
              )
            : Container(
                color: Colors.black,
                child: const Center(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                ),
              ),
      ],
    );
  }

  @override
  void dispose() {
    // context.read<WatchBloc>().add(const WatchEvent.unwatchVideo());
    super.dispose();
  }
}
