import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_login_app/src/constants/colors.dart';
import 'package:my_login_app/src/constants/image_strings.dart';
import 'package:my_login_app/src/constants/text_strings.dart';
import 'package:my_login_app/src/features/core/screens/profile/profile_screen.dart';
// import 'package:my_login_app/src/repository/authentication_repository/authentication_repo.dart';

class DashboardAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text(tAppName, style: Theme.of(context).textTheme.headlineLarge),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: tCardBgColor,
          ),
          child: IconButton(
            onPressed: () => Get.to(() => const ProfileScreen()),
            // onPressed: () {
            //   AuthenticationRepo.instance.logout();
            // },
            icon: const Image(image: AssetImage(tUserprofileImage)),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
