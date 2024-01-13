
import 'package:flutter/material.dart';

class slidingText extends StatelessWidget {
  const slidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(//34n a3ml rebuild llgza dh bs
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(//dh no3 el animation
            position: slidingAnimation,
            child: const Text(
              'reed free books',
              style: TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}