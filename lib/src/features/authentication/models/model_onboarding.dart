import 'package:flutter/widgets.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String subtitle;
  final String counterText;
  final Color bgColor;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.counterText,
    required this.bgColor,
  });
}
