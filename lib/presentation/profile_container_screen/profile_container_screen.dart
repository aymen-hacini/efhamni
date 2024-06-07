import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart';
import 'controller/profile_container_controller.dart'; // ignore_for_file: must_be_immutable

class ProfileContainerScreen extends GetView<ProfileContainerController> {
  const ProfileContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
     Get.lazyPut(() => ProfileContainerController());
    return Scaffold(
      body: SafeArea(
        child: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.profilePage,
        ),
      ),
    );
  }

  /// Section Widget
}
