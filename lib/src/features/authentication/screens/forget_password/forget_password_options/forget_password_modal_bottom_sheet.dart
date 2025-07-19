import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_login_app/src/constants/sizes.dart';
import 'package:my_login_app/src/constants/text_strings.dart';
import 'package:my_login_app/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:my_login_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottonsheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tForgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineLarge,
            ),

            Text(
              tForgetPasswordsubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 30.0),
            ForgotPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: tEmail,
              subtitle: tResetviaEmail,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => ForgetPasswordMailScreen());
              },
            ),

            const SizedBox(height: 20.0),

            ForgotPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: tPhonenumber,
              subtitle: tResetviaPhone,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
