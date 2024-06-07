import 'package:video_player/video_player.dart';

import '../../../core/app_export.dart';
import '../models/text_to_sign_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TextToSignScreen.
///
/// This class manages the state of the TextToSignScreen, including the
/// current textToSignModelObj
class TextToSignController extends GetxController {
  bool isloading = false;
  late TextEditingController searchController;
  late String videoname;
  late VideoPlayerController vidController;

  Rx<TextToSignModel> textToSignModelObj = TextToSignModel().obs;

  initPlayer() {
    isloading = true;
    vidController = VideoPlayerController.asset("assets/videos/$videoname.mp4")
      ..initialize().then((_) {
        isloading = false;
        vidController.setLooping(true);
        vidController.play();
        update();
      });
    isloading = false;
    update();
  }

  @override
  void onInit() {
    videoname = "";
    vidController = VideoPlayerController.asset('assets/videos/$videoname.mp4');
    searchController = TextEditingController();
    super.onInit();
  }

  void onClose() {
    searchController.dispose();
    vidController.dispose();
    super.onClose();
  }
}
