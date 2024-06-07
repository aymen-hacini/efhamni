import 'package:efhamnidz/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AuthController extends GetxController {
  goToSignup();
  goToSignin();
  onpagechanged(int index);
  rememberme(bool? val);
  goToforgetpass();
  signUp();
  signIn();
  showOrhidepass();
}

class AuthControllerImp extends AuthController {
  //===================variables for remember me checkbox========================
  bool ischecked = false;

  //========================variables for page scrolling=========================
  int currentpage = 0;
  late PageController authcontroller;

  //======================variables for text form controllers===================
  late TextEditingController loginemailController;
  late TextEditingController loginpasswordController;
  late TextEditingController signupemailController;
  late TextEditingController signupuserNameController;
  late TextEditingController signupphoneNumberController;
  late TextEditingController signuppasswordController;

  //======================variables for data request status===================
  // SignupData signupdata = SignupData(Get.find());
  // LoginData loginData = LoginData(Get.find());
  // RequestStatus signupStatus = RequestStatus.idle;
  // RequestStatus loginStatus = RequestStatus.idle;
  //==============================form controllers====================
  GlobalKey<FormState> loginform = GlobalKey<FormState>();
  GlobalKey<FormState> signupform = GlobalKey<FormState>();

  //=====================variable for password visibily handling=====================
  bool ispasshidden = true;

  //================================page scrolling functions=======================
  @override
  goToSignup() {
    currentpage++;
    authcontroller.animateToPage(currentpage,
        duration: const Duration(milliseconds: 700), curve: Curves.decelerate);
  }

  @override
  onpagechanged(int index) {
    currentpage = index;
    update();
  }

  @override
  goToSignin() {
    authcontroller.animateToPage(0,
        duration: const Duration(milliseconds: 700), curve: Curves.decelerate);
  }

//=========================================functions for forget password=================================
  @override
  rememberme(bool? val) {
    ischecked = val!;
    update();
  }

  @override
  goToforgetpass() {
    // Get.toNamed(AppRoutesNames.forgetPass);
  }

//========================functions for signing in and signing up=====================================
  @override
  signIn() async {
    Get.offAllNamed(AppRoutes.homeScreen);
    // var loginformdata = loginform.currentState;
    // if (loginformdata!.validate()) {
    //   loginStatus = RequestStatus.loading;
    //   update();
    //   var response =
    //       await loginData.checkLogin(loginemail.text, loginpassword.text);
    //   loginStatus = handlingData(response);
    //   if (loginStatus == RequestStatus.success) {
    //     if (response["status"] == "success") {
    //       myServices.sharedprefs.setString("id", "${response["data"][0]["userid"]}");
    //       myServices.sharedprefs
    //           .setString("email", response["data"][0]["user_email"]);
    //       myServices.sharedprefs
    //           .setString("username", response["data"][0]["user_name"]);
    //       myServices.sharedprefs
    //           .setString("phone", "${response["data"][0]["user_phone"]}");
    //       myServices.sharedprefs.setString("skip", "2");
    //       Get.offNamed(AppRoutesNames.homepage);
    //     } else {
    //       Get.defaultDialog(
    //         title: "Warning",
    //         middleText: "There is no account with this email",
    //         textConfirm: "Signup",
    //         onConfirm: () {
    //           Get.back();
    //           clearControllers();
    //           goToSignup();
    //         },
    //         textCancel: "Cancel",
    //       );

    //       loginStatus = RequestStatus.valuefailure;
    //       update();
    //     }
    //   }
    // }
  }

  @override
  signUp() async {
    // var signupformdata = signupform.currentState;
    // if (signupformdata!.validate()) {
    //   signupStatus = RequestStatus.loading;
    //   update();
    //   var response = await signupdata.insertData(signupuserNameController.text,
    //       signupemail.text, signuppasswordController.text, signupphoneNumberController.text);
    //   signupStatus = handlingData(response);
    //   if (signupStatus == RequestStatus.success) {
    //     if (response["status"] == "success") {
    //       Get.offNamed(AppRoutesNames.verifySignup,
    //           arguments: {"email": signupemail.text});
    //     } else {
    //       Get.defaultDialog(
    //           title: "Warning",
    //           middleText: "There is an email or a phone already registered",
    //           textConfirm: "Login",
    //           onConfirm: () {
    //             Get.back();
    //             clearControllers();
    //             goToSignin();
    //           },
    //           textCancel: "Cancel");

    //       signupStatus = RequestStatus.valuefailure;
    //     }
    //   }
    // }
  }

//===========================function to handle visibility of the password============================
  @override
  showOrhidepass() {
    ispasshidden = ispasshidden == true ? false : true;
    update();
  }

  //=======================Init on startup functions=====================================
  @override
  void onInit() {
    authcontroller = PageController();
    loginemailController = TextEditingController();
    loginpasswordController = TextEditingController();
    signupuserNameController = TextEditingController();
    signupemailController = TextEditingController();
    signupphoneNumberController = TextEditingController();
    signuppasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    loginemailController.dispose();
    loginpasswordController.dispose();
    signupemailController.dispose();
    signuppasswordController.dispose();
    signupuserNameController.dispose();
    signupphoneNumberController.dispose();
    super.dispose();
  }

  clearControllers() {
    loginemailController.clear();
    loginemailController.clear();
    signupemailController.clear();
    signuppasswordController.clear();
    signupuserNameController.clear();
    signupphoneNumberController.clear();
  }
}
