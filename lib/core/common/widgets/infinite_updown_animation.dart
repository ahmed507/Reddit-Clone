import 'package:flutter/material.dart';

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
