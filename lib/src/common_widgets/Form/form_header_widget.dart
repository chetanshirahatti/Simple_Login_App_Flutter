import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.heightBetween,
    this.imageColor,
    this.imageHeight = 0.2,
    this.textAlign,
  });

  final String image, title, subtitle;
  final Color? imageColor;
  final double? heightBetween;
  final double imageHeight;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(image), height: size.height * 0.2),

        Text(title, style: Theme.of(context).textTheme.headlineLarge),

        Text(
          subtitle,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
