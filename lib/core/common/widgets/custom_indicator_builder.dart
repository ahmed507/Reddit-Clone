import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:reddit_clone/core/common/widgets/infinite_updown_animation.dart';
import 'package:reddit_clone/core/common/widgets/positioned_indicator_container.dart';
import 'package:reddit_clone/generated/assets.dart';

class CustomIndicatorBuilder extends StatelessWidget {
  final Widget child;
  final IndicatorController controller;

  const CustomIndicatorBuilder({
    super.key,
    required this.child,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
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
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _defaultBuilder(
      BuildContext context, Widget child, IndicatorController controller) {
    // Implement the logic for _defaultBuilder or use it if it's already defined elsewhere.
    return child; // Placeholder return, adjust as necessary.
  }
}
