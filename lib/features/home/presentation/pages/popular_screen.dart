import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:reddit_clone/core/common/widgets/infinite_updown_animation.dart';
import 'package:reddit_clone/core/common/widgets/positioned_indicator_container.dart';
import 'package:reddit_clone/features/home/domain/entities/post_entity.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_widget.dart';
import 'package:reddit_clone/generated/assets.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  Widget _defaultBuilder(
          BuildContext context, Widget child, IndicatorController controller) =>
      child;

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      autoRebuild: false,
      onRefresh: () async {
        await Future<void>.delayed(const Duration(seconds: 3));
      },
      builder: (context, child, controller) {
        final Color backgroundColor =
            ProgressIndicatorTheme.of(context).refreshBackgroundColor ??
                Theme.of(context).canvasColor;

        return Stack(
          children: <Widget>[
            _defaultBuilder(context, child, controller),
            PositionedIndicatorContainer(
              edgeOffset: 0,
              displacement: 40,
              controller: controller,
              child: ScaleTransition(
                scale: controller.isFinalizing
                    ? controller.clamp(0.0, 1.0)
                    : const AlwaysStoppedAnimation(1.0),
                child: Container(
                  width: 41,
                  height: 41,
                  margin: const EdgeInsets.all(4.0),
                  child: InfiniteUpDownAnimation(
                      running: controller.isLoading,
                      child: Material(
                        type: MaterialType.circle,
                        clipBehavior: Clip.antiAlias,
                        color: backgroundColor,
                        elevation: 2,
                        child: AnimatedBuilder(
                          animation: controller,
                          builder: (context, _) =>
                              Image.asset(Assets.imagesRedditLogo),
                        ),
                      )),
                ),
              ),
            ),
          ],
        );
      },
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          color: Colors.white12,
          height: 0.1,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return PostWidget(
            post: PostEntity(
              id: '1',
              subreddit: 'r/FlutterPopular',
              likeCount: 10,
              timeAgo: '0.5h',
              title: 'FlutterPopular is awesome!',
              content: 'This is a post content',
              commentCount: 10,
              shareCount: 7,
            ),
            onTapComment: () {},
            onTapShare: () {},
            onTapVoteSave: () {},
          );
        },
      ),
    );
  }
}
