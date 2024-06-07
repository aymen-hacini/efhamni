import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:efhamnidz/widgets/app_bar/custom_app_bar.dart';
import 'package:efhamnidz/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:efhamnidz/widgets/custom_search_view.dart';
import 'package:efhamnidz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart';
import 'package:video_player/video_player.dart';
import 'controller/text_to_sign_controller.dart';

// ignore_for_file: must_be_immutable
class TextToSignScreen extends GetView<TextToSignController> {
  const TextToSignScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TextToSignController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 31.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 50.v),
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.h),
                          child: CustomSearchView(
                            txtcontroller: controller.searchController,
                            onChanged: (value) {
                              controller.videoname = value;
                            },
                            hintText: "msg_enter_your_text".tr,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Text(
                          "lbl_or".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 20.v),
                        Hero(
                          tag: "smooth-dict-tag",
                          child: CustomElevatedButton(
                            onPressed: () {
                              AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.info,
                                  title: "Coming Soon ...",
                                  autoDismiss: true)
                                ..show();
                            },
                            height: 41.v,
                            text: "msg_choose_from_dictionnary".tr,
                            margin: EdgeInsets.only(
                              left: 43.h,
                              right: 51.h,
                            ),
                            buttonStyle:
                                CustomButtonStyles.fillErrorContainerTL17,
                            buttonTextStyle: CustomTextStyles
                                .bodyLargeInterOnSecondaryContainer,
                          ),
                        ),
                        SizedBox(height: 36.v),
                        //videoPlayer(),
                        GetBuilder<TextToSignController>(builder: (controller) {
                          return Stack(
                            children: [
                              controller.vidController.value.isInitialized
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: AspectRatio(
                                        aspectRatio: controller
                                            .vidController.value.aspectRatio,
                                        child: VideoPlayer(
                                            controller.vidController),
                                      ),
                                    )
                                  : Container(),
                              AspectRatio(
                                aspectRatio:
                                    controller.vidController.value.aspectRatio,
                                child: Column(
                                  children: [
                                    Spacer(),
                                    controller.vidController.value.isInitialized
                                        ? VideoProgressIndicator(
                                            colors: VideoProgressColors(
                                                bufferedColor: Colors.grey,
                                                playedColor: Colors.orange),
                                            controller.vidController,
                                            allowScrubbing: true)
                                        : SizedBox(),
                                    Container(
                                      height: 35,
                                      decoration: BoxDecoration(
                                          backgroundBlendMode:
                                              BlendMode.overlay,
                                          color: Color.fromARGB(116, 0, 0, 0)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                controller.vidController
                                                    .setPlaybackSpeed(1);
                                              },
                                              icon: Icon(
                                                Icons.fast_rewind,
                                                size: 26,
                                                color: Colors.orange,
                                              )),
                                          IconButton(
                                              onPressed: () {
                                                controller.vidController.play();
                                              },
                                              icon: Icon(
                                                Icons.play_arrow,
                                                size: 26,
                                                color: Colors.orange,
                                              )),
                                          IconButton(
                                              onPressed: () {
                                                controller.vidController
                                                    .pause();
                                              },
                                              icon: Icon(
                                                Icons.pause_circle,
                                                size: 26,
                                                color: Colors.orange,
                                              )),
                                          IconButton(
                                              onPressed: () {
                                                controller.vidController
                                                    .setPlaybackSpeed(2);
                                              },
                                              icon: Icon(
                                                Icons.fast_forward,
                                                size: 26,
                                                color: Colors.orange,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        })
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
        text: "msg_translate_text_to".tr,
      ),
    );
  }
}
