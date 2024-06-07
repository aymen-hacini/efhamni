import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "smooth-dict-tag",
      child: SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: 375.h,
            child: Column(
              children: [
                _buildAppNavigation(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: AppDecoration.fillOnSecondaryContainer,
                      child: Column(
                        children: [
                          _buildScreenTitle(
                            screenTitle: "lbl_onboarding_one".tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.onboardingOneScreen),
                          ),
                          _buildScreenTitle(
                            screenTitle: "lbl_onboarding_two".tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                          ),
                          _buildScreenTitle(
                            screenTitle: "msg_onboarding_three".tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.gameScreen),
                          ),
                          _buildScreenTitle(
                            screenTitle: "lbl_register2".tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.registerScreen),
                          ),
                          _buildScreenTitle(
                            screenTitle: "lbl_login".tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.loginScreen),
                          ),
                          _buildScreenTitle(
                            screenTitle: "msg_profile_container".tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                AppRoutes.profileContainerScreen),
                          ),
                          _buildScreenTitle(
                            screenTitle: "lbl_settings".tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.settingsScreen),
                          ),
                          _buildScreenTitle(
                            screenTitle: "lbl_text_to_sign".tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.textToSignScreen),
                          ),
                          _buildScreenTitle(
                            screenTitle: "lbl_edit_profile".tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.editProfileScreen),
                          ),
                          _buildScreenTitle(
                            screenTitle: "lbl_splash_screen".tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.splashScreen),
                          ),
                          _buildScreenTitle(
                            screenTitle: "lbl_sign_to_text".tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.signToTextScreen),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: AppDecoration.fillOnSecondaryContainer,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "lbl_app_navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: theme.colorScheme.primary.withOpacity(1),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "msg_check_your_app_s".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: theme.colorScheme.primary.withOpacity(1),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillOnSecondaryContainer,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: theme.colorScheme.primary.withOpacity(1),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
