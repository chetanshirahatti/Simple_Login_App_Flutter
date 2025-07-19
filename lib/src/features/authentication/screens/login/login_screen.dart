import 'package:flutter/material.dart';
import 'package:my_login_app/src/constants/sizes.dart';
import 'package:my_login_app/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:my_login_app/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:my_login_app/src/features/authentication/screens/login/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header
                LoginHeaderWidget(),

                const SizedBox(height: tFormHeight),

                //forms
                const LoginFrom(),

                //footer
                const LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
