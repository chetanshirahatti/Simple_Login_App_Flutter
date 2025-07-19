import 'package:flutter/material.dart';
import 'package:my_login_app/src/constants/sizes.dart';
import 'package:my_login_app/src/features/authentication/models/model_onboarding.dart';

class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({super.key, required this.model});

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: size.height * 0.5),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(model.subtitle, textAlign: TextAlign.center),
            ],
          ),

          Text(
            model.counterText,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 80.0),
        ],
      ),
    );
  }
}
