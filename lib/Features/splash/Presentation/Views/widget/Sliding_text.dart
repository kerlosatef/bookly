import 'package:flutter/material.dart';

class Slidingtext extends StatelessWidget {
  const Slidingtext({
    super.key,
    required this.animationController,
    required this.slideAnimation,
  });

  final AnimationController animationController;
  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => SlideTransition(
        position: slideAnimation,
        child: const Text(
          'Online Book Club',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
