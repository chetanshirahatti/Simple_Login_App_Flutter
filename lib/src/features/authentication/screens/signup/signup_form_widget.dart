import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_login_app/src/constants/sizes.dart';
import 'package:my_login_app/src/constants/text_strings.dart';
import 'package:my_login_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:my_login_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullname,
              decoration: const InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),

            const SizedBox(height: tFormHeight),

            TextFormField(
              controller: controller.email,

              decoration: const InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),

            const SizedBox(height: tFormHeight),

            TextFormField(
              controller: controller.phoneNo,

              decoration: const InputDecoration(
                label: Text(tPhonenumber),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),

            const SizedBox(height: tFormHeight),

            TextFormField(
              controller: controller.password,

              decoration: const InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),

            const SizedBox(height: tFormHeight),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // SignupController.instance.registerUser(
                    //   controller.email.text.trim(),
                    //   controller.password.text.trim(),
                    // );

                    SignupController.instance.phoneAuthentication(
                      controller.phoneNo.text.trim(),
                    );
                    Get.to(() => const OtpScreen());
                  }
                },
                child: Text(tSignUp.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
