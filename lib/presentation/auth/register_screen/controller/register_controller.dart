import '../../../../core/app_export.dart';
import '../models/register_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegisterScreen.
///
/// This class manages the state of the RegisterScreen, including the
/// current registerModelObj
class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    userNameController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }
}
