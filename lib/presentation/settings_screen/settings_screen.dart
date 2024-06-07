import 'package:efhamnidz/widgets/app_bar/custom_app_bar.dart';
import 'package:efhamnidz/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart';
import 'controller/settings_controller.dart'; // ignore_for_file: must_be_immutable

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SettingsController());
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 23.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "lbl_account".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 9.v),
              _buildSixteen(),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "msg_cache_cellular".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 7.v),
              _buildEighteen(),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "lbl_actions".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 6.v),
              _buildNineteen(),
              SizedBox(height: 6.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarSubtitle(
        text: "lbl_settings".tr,
        margin: EdgeInsets.only(left: 129.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixteen() {
    return Container(
      width: 342.h,
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIconamoonProfileLight,
                height: 30.adaptSize,
                width: 30.adaptSize,
                onTap: () {
                  onTapImgImage();
                },
              ),
              GestureDetector(
                onTap: () {
                  onTapTxtEditProfile();
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 36.h,
                    top: 6.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_edit_profile".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaterialSymbolSecondarycontainer,
                height: 30.adaptSize,
                width: 30.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 36.h,
                  top: 6.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "lbl_security".tr,
                  style: theme.textTheme.titleMedium,
                ),
              )
            ],
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIconamoonNotification,
                height: 30.adaptSize,
                width: 30.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 36.h,
                  top: 4.v,
                  bottom: 5.v,
                ),
                child: Text(
                  "lbl_notifications".tr,
                  style: theme.textTheme.titleMedium,
                ),
              )
            ],
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIcOutlineLock,
                height: 30.adaptSize,
                width: 30.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 36.h,
                  top: 6.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "lbl_privacy".tr,
                  style: theme.textTheme.titleMedium,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEighteen() {
    return Container(
      width: 342.h,
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Opacity(
                opacity: 0.9,
                child: CustomImageView(
                  imagePath: ImageConstant.imgRiDeleteBin5Line,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
              ),
              Opacity(
                opacity: 0.9,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 38.h,
                    top: 6.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_free_up_space".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              Opacity(
                opacity: 0.9,
                child: CustomImageView(
                  imagePath: ImageConstant.imgIcOutlineDataExploration,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
              ),
              Opacity(
                opacity: 0.9,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 38.h,
                    top: 5.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_data_saver".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen() {
    return Container(
      width: 342.h,
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIcSharpOutlinedFlag,
                height: 30.adaptSize,
                width: 30.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 36.h,
                  top: 6.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "msg_report_a_problem".tr,
                  style: theme.textTheme.titleMedium,
                ),
              )
            ],
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIcSharpPeopleOutline,
                height: 30.adaptSize,
                width: 30.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 36.h,
                  top: 5.v,
                  bottom: 4.v,
                ),
                child: Text(
                  "lbl_about_us".tr,
                  style: theme.textTheme.titleMedium,
                ),
              )
            ],
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMdiLogout,
                height: 30.adaptSize,
                width: 30.adaptSize,
                onTap: () {
                  onTapImgMdiLogout();
                },
              ),
              GestureDetector(
                onTap: () {
                  onTapTxtLogOut();
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 36.h,
                    top: 6.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_log_out".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  ///Handling page based on route

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapImgImage() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapTxtEditProfile() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapImgMdiLogout() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogOut() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
