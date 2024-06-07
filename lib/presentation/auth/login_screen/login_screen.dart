import 'package:efhamnidz/core/utils/validation_functions.dart';
import 'package:efhamnidz/presentation/auth/controller/authcontroller.dart';
import 'package:efhamnidz/widgets/custom_text_form_field.dart';
import 'package:efhamnidz/widgets/custom_checkbox_button.dart';
import 'package:efhamnidz/widgets/custom_elevated_button.dart';
import 'package:efhamnidz/widgets/custom_icon_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file:
class LoginScreen extends GetView<AuthControllerImp> {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: controller.loginform,
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
                          "lbl_login".tr,
                          style: theme.textTheme.displayMedium,
                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          width: 230.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_by_signing_in_you2".tr,
                                  style: CustomTextStyles.headlineSmallff6b5e5e,
                                ),
                                TextSpan(
                                  text: "msg_term_and_privacy".tr,
                                  style: CustomTextStyles.headlineSmallff0386d0,
                                ),
                                TextSpan(
                                  text: "lbl_y".tr,
                                  style: CustomTextStyles.headlineSmallff036bb9,
                                )
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 33.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_login".tr,
                                  style: CustomTextStyles
                                      .headlineSmallLightblue800,
                                ),
                                SizedBox(height: 2.v),
                                SizedBox(
                                  width: 43.h,
                                  child: Divider(),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 29.h),
                              child: InkWell(
                                onTap: () {
                                  controller.goToSignup();
                                },
                                child: Text(
                                  "lbl_register".tr,
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 43.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 45.h,
                            right: 52.h,
                          ),
                          child: CustomTextFormField(
                            controller: controller.loginemailController,
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
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            },
                            // contentPadding: EdgeInsets.only(right: 30.h),
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 45.h,
                            right: 52.h,
                          ),
                          child: GetBuilder<AuthControllerImp>(
                            builder: (controller) {
                              return CustomTextFormField(
                                controller: controller.loginpasswordController,
                                hintText: "lbl_password".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                prefix: Container(
                                  margin: EdgeInsets.only(
                                    top: 4.v,
                                    right: 11.h,
                                    bottom: 6.v,
                                  ),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgLockGray50024x24,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  maxHeight: 35.v,
                                ),
                                suffix: InkWell(
                                  onTap: () {
                                    controller.ispasshidden =
                                        !controller.ispasshidden;
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 10.v, 3.h, 6.v),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgEye,
                                      height: 18.v,
                                      width: 33.h,
                                    ),
                                  ),
                                ),
                                suffixConstraints: BoxConstraints(
                                  maxHeight: 35.v,
                                ),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_password"
                                        .tr;
                                  }
                                  return null;
                                },
                                obscureText: controller.ispasshidden,
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 40.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 45.h,
                            right: 47.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildRememberpassword(),
                              Text(
                                "lbl_forget_password".tr,
                                style: CustomTextStyles
                                    .titleLargeSakkalMajallaLightblue700,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 40.v),
                        CustomElevatedButton(
                          text: "lbl_login".tr,
                          margin: EdgeInsets.only(
                            left: 50.h,
                            right: 46.h,
                          ),
                          onPressed: () {
                            controller.signIn();
                          },
                        ),
                        SizedBox(height: 9.v),
                        Text(
                          "lbl_or_connect_with".tr,
                          style: CustomTextStyles.headlineSmallGray600,
                        ),
                        SizedBox(height: 15.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              height: 39.adaptSize,
                              width: 39.adaptSize,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgFacebook,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: CustomIconButton(
                                height: 39.adaptSize,
                                width: 39.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgInstagram1,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: CustomIconButton(
                                height: 39.adaptSize,
                                width: 39.adaptSize,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgPlay,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: CustomIconButton(
                                height: 39.adaptSize,
                                width: 39.adaptSize,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgLink,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 21.v),
                        copyrightsSection()
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
  Widget _buildRememberpassword() {
    return GetBuilder<AuthControllerImp>(
      builder: (controller) {
        return CustomCheckboxButton(
          text: "msg_remember_password".tr,
          value: controller.ischecked,
          onChange: (value) {
            controller.ischecked = value;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget copyrightsSection() {
    return SizedBox(
      height: 277.v,
      width: 414.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 129.h,
                vertical: 30.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup4,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 90.v),
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
                                            top: 10.v,
                                            right: 20.h,
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
                                  height: 95.v,
                                  width: 100.h,
                                  child: Text(
                                    "lbl_dz".tr,
                                    maxLines: 1,
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
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
                                    overflow: TextOverflow.visible,
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
