import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_widget.dart';
import 'package:reddit_clone/generated/assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _defaultBuilder(
          BuildContext context, Widget child, IndicatorController controller) =>
      child;

  Widget indicatorBuilder(
      BuildContext context, IndicatorController controller) {
    return Image.asset(Assets.imagesRedditLogo);
  }

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
            _PositionedIndicatorContainer(
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
                              indicatorBuilder(context, controller),
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
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const PostWidget(
            subreddit: 'r/FlutterDev',
            timeAgo: '1h',
            title: 'Flutter is awesome!',
            content: 'This is a post content',
            commentCount: 10,
            shareCount: 5,
          );
        },
      ),
    );
  }
}

class _PositionedIndicatorContainer extends StatelessWidget {
  final IndicatorController controller;
  final double displacement;
  final Widget child;
  final double edgeOffset;

  /// Position child widget in a similar way
  /// to the built-in [RefreshIndicator] widget.
  const _PositionedIndicatorContainer({
    required this.child,
    required this.controller,
    required this.displacement,
    required this.edgeOffset,
  });

  Alignment _getAlignement(IndicatorSide side) {
    switch (side) {
      case IndicatorSide.left:
        return Alignment.centerLeft;
      case IndicatorSide.top:
        return Alignment.topCenter;
      case IndicatorSide.right:
        return Alignment.centerRight;
      case IndicatorSide.bottom:
        return Alignment.bottomCenter;
      case IndicatorSide.none:
        throw UnsupportedError('Cannot get alignement for "none" side.');
    }
  }

  EdgeInsets _getEdgeInsets(IndicatorSide side) {
    switch (side) {
      case IndicatorSide.left:
        return EdgeInsets.only(left: displacement);
      case IndicatorSide.top:
        return EdgeInsets.only(top: displacement);
      case IndicatorSide.right:
        return EdgeInsets.only(right: displacement);
      case IndicatorSide.bottom:
        return EdgeInsets.only(bottom: displacement);
      case IndicatorSide.none:
        throw UnsupportedError('Cannot get edge insets for "none" side.');
    }
  }

  @override
  Widget build(BuildContext context) {
    final side = controller.side;
    if (side.isNone) return const SizedBox.shrink();

    final isVerticalAxis = side.isTop || side.isBottom;
    final isHorizontalAxis = side.isLeft || side.isRight;

    final AlignmentDirectional alignment = isVerticalAxis
        ? AlignmentDirectional(-1.0, side.isTop ? 1.0 : -1.0)
        : AlignmentDirectional(side.isLeft ? 1.0 : -1.0, -1.0);

    final endOffset = isVerticalAxis
        ? Offset(0.0, side.isTop ? 1.0 : -1.0)
        : Offset(side.isLeft ? 1.0 : -1.0, 0.0);

    final animation = controller.isFinalizing
        ? AlwaysStoppedAnimation(endOffset)
        : Tween(begin: const Offset(0.0, 0.0), end: endOffset)
            .animate(controller);

    return Positioned(
      top: isHorizontalAxis
          ? 0
          : side.isTop
              ? edgeOffset
              : null,
      bottom: isHorizontalAxis
          ? 0
          : side.isBottom
              ? edgeOffset
              : null,
      left: isVerticalAxis
          ? 0
          : side.isLeft
              ? edgeOffset
              : null,
      right: isVerticalAxis
          ? 0
          : side.isRight
              ? edgeOffset
              : null,
      child: Align(
        alignment: alignment,
        heightFactor: isVerticalAxis ? 0.0 : null,
        widthFactor: isHorizontalAxis ? 0.0 : null,
        child: SlideTransition(
          position: animation,
          child: Padding(
            padding: _getEdgeInsets(side),
            child: Align(
              alignment: _getAlignement(side),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

class InfiniteUpDownAnimation extends StatefulWidget {
  final Widget? child;
  final bool running;

  const InfiniteUpDownAnimation({
    super.key,
    required this.child,
    required this.running,
  });

  @override
  _InfiniteUpDownAnimationState createState() =>
      _InfiniteUpDownAnimationState();
}

class _InfiniteUpDownAnimationState extends State<InfiniteUpDownAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _moveController;
  late Animation<double> _animation;

  @override
  void didUpdateWidget(InfiniteUpDownAnimation oldWidget) {
    if (oldWidget.running != widget.running) {
      if (widget.running) {
        _startAnimation();
      } else {
        _moveController.stop();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _moveController = AnimationController(
      duration: const Duration(milliseconds: 750),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: -28).animate(
        CurvedAnimation(parent: _moveController, curve: Curves.easeInOut));

    _moveController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _moveController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _moveController.forward();
      }
    });

    if (widget.running) {
      _startAnimation();
    }

    super.initState();
  }

  @override
  void dispose() {
    _moveController.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _moveController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      child: widget.child,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: child,
        );
      },
    );
  }
}
