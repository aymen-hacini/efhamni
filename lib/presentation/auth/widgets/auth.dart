import 'package:efhamnidz/functions/alert_exit.dart';
import 'package:efhamnidz/presentation/auth/controller/authcontroller.dart';
import 'package:efhamnidz/presentation/auth/static/authlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AuthControllerImp());
    return Scaffold(
      body: GetBuilder<AuthControllerImp>(builder: (controller) {
        // ignore: deprecated_member_use
        return WillPopScope(
          onWillPop: alertExitApp,
          child: PageView.builder(
              controller: controller.authcontroller,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (page) {
                controller.onpagechanged(page);
              },
              itemCount: authlist.length,
              itemBuilder: (context, index) {
                return authlist[index];
              }),
        );
      }),
    );
  }
}
