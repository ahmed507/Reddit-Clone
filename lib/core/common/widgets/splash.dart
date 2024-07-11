import 'package:flutter/material.dart';
import 'package:reddit_clone/generated/assets.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.imagesRedditLogo,
          width: 75,
          height: 75,
        ),
      ),
    );
  }
}
