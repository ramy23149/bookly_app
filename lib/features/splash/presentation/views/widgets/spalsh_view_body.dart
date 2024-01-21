import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/router.dart';

import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  //reed here
  late AnimationController animatedController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlaidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animatedController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(KLogo, height: 300),
        slidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlaidingAnimation() {
    animatedController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 4),
      end: Offset.zero,
    ).animate(animatedController);

    animatedController.forward(); // abda t48el
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      //  Get.to(() =>const HomeView(),transition: Transition.fade,duration: KTranstionDuration);

      context.go(RouterApp.kHomeView);
    });
  }
}
