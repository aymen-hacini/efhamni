import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart';
import 'controller/splash_controller.dart'; // ignore_for_file: must_be_immutable

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.blue400, theme.colorScheme.primaryContainer],
            ),
          ),
          child: SizedBox(
            width: 414.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 190.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.h),
                          decoration: AppDecoration.outlineOnSecondaryContainer
                              .copyWith(
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
                                                    alignment:
                                                        Alignment.topRight,
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
                                              width: 98.h,
                                              child: Text(
                                                "lbl_dz".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: theme
                                                    .textTheme.displaySmall,
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
                        SizedBox(height: 12.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "msg_the_way_to_connect".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        SizedBox(height: 460.v),
                        Text(
                          "msg_2024_copyrights".tr,
                          style: CustomTextStyles
                              .headlineSmallOnSecondaryContainer,
                        )
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
}
