import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:my_login_app/src/constants/colors.dart';
import 'package:my_login_app/src/constants/image_strings.dart';
import 'package:my_login_app/src/constants/text_strings.dart';
import 'package:my_login_app/src/features/authentication/models/model_onboarding.dart';
import 'package:my_login_app/src/features/authentication/screens/on_boarding/onboarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnboardingPageWidget(
      model: OnboardingModel(
        image: tOnBoardingImage1,
        title: tOnBoardingTitle1,
        subtitle: tOnBoardingsubTitle1,
        counterText: tOnBoardingCounter1,
        // height: size.height,
        bgColor: tOnBoardingPAge1Color,
      ),
    ),

    OnboardingPageWidget(
      model: OnboardingModel(
        image: tOnBoardingImage2,
        title: tOnBoardingTitle2,
        subtitle: tOnBoardingsubTitle2,
        counterText: tOnBoardingCounter2,
        // height: size.height,
        bgColor: tOnBoardingPAge1Color,
      ),
    ),

    OnboardingPageWidget(
      model: OnboardingModel(
        image: tOnBoardingImage3,
        title: tOnBoardingTitle3,
        subtitle: tOnBoardingsubTitle3,
        counterText: tOnBoardingCounter3,
        // height: size.height,
        bgColor: tOnBoardingPAge1Color,
      ),
    ),
  ];

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
