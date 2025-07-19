import 'package:flutter/material.dart';
import 'package:my_login_app/src/constants/image_strings.dart';
import 'package:my_login_app/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(tWelcomeImage), height: size.height * 0.2),

        Text(tLoginTitle, style: Theme.of(context).textTheme.headlineLarge),

        Text(tLoginsubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
