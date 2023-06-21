import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SignInController extends GetxController {
  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isCheckbox = false.obs;

  @override
  void onClose() {
    super.onClose();
    mobileNumberController.dispose();
    passwordController.dispose();
  }
}
