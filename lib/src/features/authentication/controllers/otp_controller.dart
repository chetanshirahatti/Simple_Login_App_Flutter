import 'package:get/get.dart';
import 'package:my_login_app/src/features/core/screens/dashboard/widgets/dashboard.dart';
import 'package:my_login_app/src/repository/authentication_repository/authentication_repo.dart';

class OtpController extends GetxController {
  static OtpController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepo.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const Dashboard()) : Get.back();
  }
}
