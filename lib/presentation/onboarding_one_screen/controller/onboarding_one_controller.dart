import 'package:efhamnidz/presentation/onboarding_one_screen/controller/onboardinglist.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

/// A controller class for the OnboardingOneScreen.
///
/// This class manages the state of the OnboardingOneScreen, including the
/// current onboardingOneModelObj
abstract class OnboardingOneController extends GetxController {
  next();
  onpagechanged(int index);
  skip();
}

class OnboardingOneControllerImp extends OnboardingOneController {
  int currentpage = 0;
  late PageController pagecontrol;

  @override
  next() {
    currentpage++;
    if (currentpage > onboardingList.length - 1) {
      Get.offAllNamed(AppRoutes.authScreen);
    } else {
      pagecontrol.animateToPage(currentpage,
          duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
    }
  }

  @override
  onpagechanged(int index) {
    currentpage = index;
    update();
  }

  @override
  skip() {
    pagecontrol.animateToPage(onboardingList.length - 1,
        duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
  }

  @override
  void onInit() {
    print(onboardingList.length);
    pagecontrol = PageController();
    super.onInit();
  }
}
