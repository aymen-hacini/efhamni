import 'package:efhamnidz/core/utils/validation_functions.dart';
import 'package:efhamnidz/presentation/auth/controller/authcontroller.dart';
import 'package:efhamnidz/widgets/custom_text_form_field.dart';
import 'package:efhamnidz/widgets/custom_elevated_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file:
class RegisterScreen extends GetWidget<AuthControllerImp> {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: controller.signupform,
          child: SizedBox(
            width: Get.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 50.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "lbl_register".tr,
                          style: theme.textTheme.displayMedium,
                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          height: 170.v,
                          width: 300.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: Get.width,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "msg_by_registering_in2".tr,
                                          style: CustomTextStyles
                                              .headlineSmallff6b5e5e,
                                        ),
                                        TextSpan(
                                          text: "msg_term_and_privacy".tr,
                                          style: CustomTextStyles
                                              .headlineSmallff0386d0,
                                        ),
                                        TextSpan(
                                          text: "lbl_y".tr,
                                          style: CustomTextStyles
                                              .headlineSmallff036bb9,
                                        )
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        controller.goToSignin();
                                      },
                                      child: Text(
                                        "lbl_login".tr,
                                        style: theme.textTheme.headlineSmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 29.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_register".tr,
                                            style: CustomTextStyles
                                                .headlineSmallLightblue800,
                                          ),
                                          SizedBox(height: 2.v),
                                          SizedBox(
                                            width: 52.h,
                                            child: Divider(
                                              indent: 9.h,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        _buildEmail(),
                        SizedBox(height: 20.v),
                        _buildUserName(),
                        SizedBox(height: 20.v),
                        _buildPhoneNumber(),
                        SizedBox(height: 20.v),
                        _buildPassword(),
                        SizedBox(height: 20.v),
                        _buildRegister(),
                        SizedBox(height: 48.v),
                        registerFooter()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.only(
        left: 51.h,
        right: 46.h,
      ),
      child: CustomTextFormField(
        controller: controller.signupemailController,
        hintText: "lbl_email_address".tr,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
          margin: EdgeInsets.only(
            top: 6.v,
            right: 11.h,
            bottom: 4.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 35.v,
        ),
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(right: 30.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName() {
    return Padding(
      padding: EdgeInsets.only(
        left: 51.h,
        right: 46.h,
      ),
      child: CustomTextFormField(
        controller: controller.signupuserNameController,
        hintText: "lbl_username".tr,
        prefix: Container(
          margin: EdgeInsets.only(
            top: 1.v,
            right: 11.h,
            bottom: 1.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgLockGray500,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 35.v,
        ),
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(right: 30.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return Padding(
      padding: EdgeInsets.only(
        left: 49.h,
        right: 46.h,
      ),
      child: CustomTextFormField(
        controller: controller.signupphoneNumberController,
        hintText: "lbl_phone_number".tr,
        textInputType: TextInputType.phone,
        prefix: Container(
          margin: EdgeInsets.only(
            top: 2.v,
            right: 14.h,
            bottom: 2.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgCall,
            height: 23.adaptSize,
            width: 23.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 35.v,
        ),
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(right: 30.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.only(
        left: 51.h,
        right: 46.h,
      ),
      child: CustomTextFormField(
        controller: controller.signuppasswordController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
          margin: EdgeInsets.only(
            top: 4.v,
            right: 11.h,
            bottom: 7.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgLockGray50024x24,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 35.v,
        ),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
        contentPadding: EdgeInsets.only(right: 30.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegister() {
    return CustomElevatedButton(
      text: "lbl_register".tr,
      margin: EdgeInsets.only(
        left: 48.h,
        right: 46.h,
      ),
      onPressed: () {
        controller.signUp();
      },
    );
  }

  /// Section Widget
  Widget registerFooter() {
    return SizedBox(
      height: 320.v,
      width: 414.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 129.h,
                vertical: 66.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup4,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 80.v),
                  Text(
                    "msg_2024_copyrights".tr,
                    style: CustomTextStyles.headlineSmallOnSecondaryContainer,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30.h),
              decoration: AppDecoration.outlineOnSecondaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder88,
              ),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: appTheme.blue400,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder88,
                ),
                child: Container(
                  height: 176.adaptSize,
                  width: 176.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  decoration: AppDecoration.fillBlue.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder88,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 149.v,
                          width: 146.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  height: 129.v,
                                  width: 140.h,
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgImageRemovebgPreview,
                                        height: 129.v,
                                        width: 140.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 14.v,
                                            right: 27.h,
                                          ),
                                          child: Text(
                                            "lbl".tr,
                                            style: CustomTextStyles
                                                .headlineSmallAArslanWessamBOrangeA200,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  width: 95.h,
                                  child: Text(
                                    "lbl_dz".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.start,
                                    style: theme.textTheme.displaySmall,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 56.h,
                                  margin: EdgeInsets.only(
                                    top: 28.v,
                                    right: 14.h,
                                  ),
                                  child: Text(
                                    "lbl2".tr,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleLargeAArslanWessamBOrangeA200,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 167.adaptSize,
                          width: 167.adaptSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              83.h,
                            ),
                            border: Border.all(
                              color: appTheme.blueGray800,
                              width: 2.h,
                              strokeAlign: strokeAlignOutside,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
