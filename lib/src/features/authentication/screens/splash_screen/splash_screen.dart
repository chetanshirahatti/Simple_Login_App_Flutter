import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_login_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:my_login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:my_login_app/src/constants/colors.dart';
import 'package:my_login_app/src/constants/image_strings.dart';
import 'package:my_login_app/src/constants/sizes.dart';
import 'package:my_login_app/src/constants/text_strings.dart';
import 'package:my_login_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FadeInAnimationController controller = Get.put(
      FadeInAnimationController(),
    );
    controller.startAnimation();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            TFadeInAnimation(
              durationInMs: 1600,
              animatedPosition: TAnimatedPosition(
                topAfter: 0,
                topBefore: -30,
                leftBefore: -30,
                leftAfter: 0,
              ),
              child: const Image(image: AssetImage(tSplashTopIcon)),
            ),

            TFadeInAnimation(
              durationInMs: 2000,
              animatedPosition: TAnimatedPosition(
                topBefore: 80,
                topAfter: 80,
                leftAfter: tDefaultSize,
                leftBefore: -80,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tAppName,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    tAppTagLine,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),

            TFadeInAnimation(
              durationInMs: 2400,
              animatedPosition: TAnimatedPosition(
                bottomAfter: 100,
                bottomBefore: 0,
              ),
              child: const Image(image: AssetImage(tSplashImage)),
            ),

            TFadeInAnimation(
              durationInMs: 2400,
              animatedPosition: TAnimatedPosition(
                bottomBefore: 0,
                bottomAfter: 60,
                rightAfter: tDefaultSize,
                rightBefore: tDefaultSize,
              ),
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
