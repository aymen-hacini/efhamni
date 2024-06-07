import 'package:efhamnidz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart';
import 'package:get/get.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ProfileController(ProfileModel().obs));
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnSecondaryContainer,
            child: Column(
              children: [
                _buildSixtyEight(),
                Text(
                  "lbl_melissa_peters".tr,
                  style: CustomTextStyles.titleMediumIndigo400,
                ),
                SizedBox(height: 7.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMaterialSymbolsLocationOn,
                      height: 27.adaptSize,
                      width: 27.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 3.h,
                        top: 5.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        "msg_sidi_bel_abbes".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 29.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      height: 35.v,
                      width: 124.h,
                      text: "lbl_edit_profile".tr,
                      buttonStyle: CustomButtonStyles.fillErrorContainer,
                      buttonTextStyle: theme.textTheme.bodyMedium!,
                      onPressed: () {
                        onTapEditProfile();
                      },
                    ),
                    CustomElevatedButton(
                      height: 35.v,
                      width: 124.h,
                      text: "lbl_my_dictionnary".tr,
                      margin: EdgeInsets.only(left: 6.h),
                      buttonStyle: CustomButtonStyles.fillErrorContainer,
                      buttonTextStyle: theme.textTheme.bodyMedium!,
                    )
                  ],
                ),
                SizedBox(height: 12.v),
                _buildList(),
                SizedBox(height: 12.v),
                _buildContainer()
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyEight() {
    return SizedBox(
      height: 280.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2,
            height: 183.v,
            width: 390.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 155.adaptSize,
              width: 155.adaptSize,
              padding: EdgeInsets.all(1.h),
              decoration: AppDecoration.outlineIndigo.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder77,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgEllipse2,
                height: 150.adaptSize,
                width: 150.adaptSize,
                radius: BorderRadius.circular(
                  75.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      decoration: AppDecoration.fillErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        width: 360.h,
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.outlineOnSecondaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_hand_signs_learned".tr,
              style: CustomTextStyles.bodyMediumRoboto,
            ),
            SizedBox(height: 6.v),
            Text(
              "lbl_15".tr,
              style: CustomTextStyles.titleLargeRobotoOnSecondaryContainer,
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      decoration: AppDecoration.fillErrorContainer,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlinePrimary1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "msg_achievements_distribution".tr,
              style: CustomTextStyles.titleMediumRobotoOnSecondaryContainer,
            ),
            SizedBox(height: 6.v),
            CustomImageView(
              imagePath: ImageConstant.imgGraph,
              height: 180.v,
              width: 312.h,
            ),
            SizedBox(height: 5.v),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "lbl_category".tr,
                style: theme.textTheme.bodySmall,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapEditProfile() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }
}
