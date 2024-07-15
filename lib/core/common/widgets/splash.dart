import 'package:flutter/material.dart';
import 'package:reddit_clone/core/common/widgets/infinite_updown_animation.dart';
import 'package:reddit_clone/generated/assets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.all(4.0),
          child: InfiniteUpDownAnimation(
              running: controller.isAnimating,
              child: Material(
                type: MaterialType.circle,
                clipBehavior: Clip.antiAlias,
                color: Colors.white,
                elevation: 2,
                child: AnimatedBuilder(
                  animation: controller,
                  builder: (context, _) => Image.asset(Assets.imagesRedditLogo),
                ),
              )),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
