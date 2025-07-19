import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_login_app/src/repository/authentication_repository/authentication_repo.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullname = TextEditingController();
  final phoneNo = TextEditingController();

  void registerUser(String email, String password) {
    AuthenticationRepo.instance.createUserWithEmailAndPassword(email, password);
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepo.instance.phoneAuthentication(phoneNo);
  }
}
