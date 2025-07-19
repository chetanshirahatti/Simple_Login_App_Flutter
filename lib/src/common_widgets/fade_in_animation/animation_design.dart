import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:my_login_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class TFadeInAnimation extends StatelessWidget {
  TFadeInAnimation({
    super.key,
    required this.durationInMs,
    this.animatedPosition,
    required this.child,
  });

  final FadeInAnimationController controller = Get.put(
    FadeInAnimationController(),
  );
  final int durationInMs;
  final TAnimatedPosition? animatedPosition;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value
            ? animatedPosition!.topAfter
            : animatedPosition!.topBefore,
        left: controller.animate.value
            ? animatedPosition!.leftAfter
            : animatedPosition!.leftBefore,
        bottom: controller.animate.value
            ? animatedPosition!.bottomAfter
            : animatedPosition!.bottomBefore,
        right: controller.animate.value
            ? animatedPosition!.rightAfter
            : animatedPosition!.rightBefore,
        child: child,
        // child: Image(image: AssetImage(tSplashTopIcon)),
      ),
    );
  }
}
