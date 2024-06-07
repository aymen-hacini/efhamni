import 'package:camera/camera.dart';
import 'package:efhamnidz/widgets/app_bar/custom_app_bar.dart';
import 'package:efhamnidz/widgets/app_bar/appbar_subtitle_one.dart';

import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart';
import 'controller/sign_to_text_controller.dart';

// ignore_for_file: must_be_immutable
class SignToTextScreen extends GetView<SignToTextController> {
  const SignToTextScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignToTextController());
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 51.v),
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            controller.startModel();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 30),
                              elevation: 7),
                          child: Text(
                            "Start Reading",
                            style: theme.textTheme.titleSmall!
                                .copyWith(color: Colors.white),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            controller.stopModel();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 30),
                              elevation: 7),
                          child: Text(
                            "Stop Reading",
                            style: theme.textTheme.titleSmall!
                                .copyWith(color: Colors.white),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  GetBuilder<SignToTextController>(builder: (controller) {
                    return controller.isreading == true
                        ? controller.cameraImage != null
                            ? Stack(
                                children: [
                                  Container(
                                    height: Get.height * 0.65,
                                    width: Get.width * 0.9,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: AspectRatio(
                                        aspectRatio: controller
                                            .cameraController!
                                            .value
                                            .aspectRatio,
                                        child: CameraPreview(
                                            controller.cameraController!),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      child: IconButton(
                                    onPressed: () {
                                      if (controller.currentcameraindex == 1) {
                                        controller.currentcameraindex = 0;
                                        controller.changeCamera();
                                     
                                      } else {
                                        controller.currentcameraindex = 1;
                                        controller.changeCamera();
                                      }
                                    },
                                    icon: Icon(
                                      Icons.cameraswitch,
                                      color: Colors.orange,
                                      size: 30,
                                    ),
                                  ))
                                ],
                              )
                            : SizedBox()
                        : Text(" there is no reading");
                  }),
                  SizedBox(height: 8.v),
                  Text(
                    "lbl_translation".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 12.v),
                  GetBuilder<SignToTextController>(
                    builder: (controller) {
                      return Text(
                        controller.answer,
                        style: CustomTextStyles.titleLargeCairo,
                      );
                    },
                  ),
                ],
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
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "msg_translate_hand_signs".tr,
      ),
    );
  }

  /// Section Widget
}
