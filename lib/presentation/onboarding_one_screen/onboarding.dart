import 'package:efhamnidz/presentation/onboarding_one_screen/controller/onboardinglist.dart';
import 'package:efhamnidz/presentation/onboarding_one_screen/widgets/onboardingdotscontroller.dart';
import 'package:efhamnidz/widgets/app_bar/custom_app_bar.dart';
import 'package:efhamnidz/widgets/app_bar/appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart';
import 'controller/onboarding_one_controller.dart';

// ignore_for_file: must_be_immutable
class OnboardingOneScreen extends GetView<OnboardingOneControllerImp> {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray700,
      body: SafeArea(
        child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (pageNo) {
                  controller.onpagechanged(pageNo);
                },
                controller: controller.pagecontrol,
                itemCount: onboardingList.length,
                itemBuilder: (context, i) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 33.v),
                          decoration: onboardingList[i].pagecolor,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(onboardingList[i].appbarText.tr,
                                    style: theme.textTheme.headlineMedium!
                                        .copyWith(
                                            color: theme.colorScheme
                                                .onSecondaryContainer
                                                .withOpacity(1))),
                              ),
                              SizedBox(height: 43.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 292.h,
                                  margin: EdgeInsets.only(
                                    left: 24.h,
                                    right: 58.h,
                                  ),
                                  child: Text(
                                    onboardingList[i].bodyText.tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.visible,
                                    style: CustomTextStyles
                                        .bodyLargeSFProOnSecondaryContainer_1
                                        .copyWith(
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 400,
                                child: Image.asset(
                                    fit: BoxFit.fill, onboardingList[i].image),
                              ),
                              Spacer(),
                              SizedBox(height: 40.v),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        controller.skip();
                                      },
                                      child: Text(
                                        "lbl_skip".tr,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 10,
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    150, 138, 136, 136),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 25, horizontal: 15)),
                                        onPressed: () {
                                          controller.next();
                                        },
                                        child: controller.currentpage ==
                                                onboardingList.length - 1
                                            ? const Text(
                                                "Get Started",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              )
                                            : const Text(
                                                "Continue",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ))
                                  ],
                                ),
                              ),
                              DotsController()
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                })),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(String? appbarText) {
    return CustomAppBar(
      height: 34.v,
      centerTitle: true,
      title: AppbarTitle(
        text: appbarText!.tr,
      ),
    );
  }
}
