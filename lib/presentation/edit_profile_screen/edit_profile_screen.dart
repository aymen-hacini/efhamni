import 'package:efhamnidz/widgets/app_bar/custom_app_bar.dart';
import 'package:efhamnidz/widgets/app_bar/appbar_leading_image.dart';
import 'package:efhamnidz/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:efhamnidz/widgets/custom_text_form_field.dart';
import 'package:efhamnidz/core/utils/validation_functions.dart';
import 'package:efhamnidz/widgets/custom_drop_down.dart';
import 'package:efhamnidz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart';
import 'controller/edit_profile_controller.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 7.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 175.v,
                        width: 171.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 175.v,
                                width: 171.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    87.h,
                                  ),
                                  border: Border.all(
                                    color: theme.colorScheme.errorContainer,
                                    width: 1.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 170.v,
                                width: 165.h,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgEllipse2170x165,
                                      height: 170.v,
                                      width: 165.h,
                                      radius: BorderRadius.circular(
                                        85.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgSolarCameraMi,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(right: 9.h),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Text(
                      "lbl_name".tr,
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    SizedBox(height: 7.v),
                    _buildName(),
                    SizedBox(height: 14.v),
                    Text(
                      "lbl_email".tr,
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    SizedBox(height: 8.v),
                    _buildEmail(),
                    SizedBox(height: 15.v),
                    Text(
                      "lbl_password".tr,
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    SizedBox(height: 7.v),
                    _buildPassword(),
                    SizedBox(height: 14.v),
                    Text(
                      "lbl_date_of_birth".tr,
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    SizedBox(height: 8.v),
                    CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 8.v, 20.h, 16.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFavorite,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      hintText: "lbl_23_05_1995".tr,
                      items: controller
                          .editProfileModelObj.value.dropdownItemList.value,
                    ),
                    SizedBox(height: 16.v),
                    Text(
                      "lbl_country_region".tr,
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    SizedBox(height: 6.v),
                    CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 8.v, 20.h, 16.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFavorite,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      hintText: "lbl_algerie".tr,
                      items: controller
                          .editProfileModelObj.value.dropdownItemList1.value,
                    ),
                    SizedBox(height: 29.v),
                    _buildSaveChanges(),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 55.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMaterialSymbolPrimary,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 13.v,
          bottom: 13.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_edit_profile2".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
      controller: controller.nameController,
      hintText: "lbl_melissa_peters2".tr,
      hintStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "msg_melpeters_gmail_com".tr,
      hintStyle: theme.textTheme.titleSmall!,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
      controller: controller.passwordController,
      hintText: "lbl3".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSaveChanges() {
    return CustomElevatedButton(
      width: 221.h,
      text: "lbl_save_changes".tr,
      buttonStyle: CustomButtonStyles.fillErrorContainerTL6,
      buttonTextStyle: CustomTextStyles.titleLargeOnSecondaryContainer,
      alignment: Alignment.center,
    );
  }
}
