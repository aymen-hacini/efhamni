import 'package:animations/animations.dart';
import 'package:efhamnidz/core/app_export.dart';
import 'package:efhamnidz/presentation/home/homecontroller.dart';
import 'package:efhamnidz/presentation/home/homelist.dart';
import 'package:efhamnidz/widgets/bottomnavbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends GetView<HomeScreenControllerImp> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          splashColor: Colors.orange,
          onPressed: () {
            Get.toNamed(AppRoutes.gameScreen);
          },
          child: Icon(
            Icons.gamepad,
            color: Colors.white,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GetBuilder<HomeScreenControllerImp>(
        builder: (controller) {
          return MyNavBar();
        },
      ),
      body: GetBuilder<HomeScreenControllerImp>(builder: (controller) {
        return PageTransitionSwitcher(
          duration: Duration(milliseconds: 400),
          transitionBuilder: ((child, primaryAnimation, secondaryAnimation) =>
              FadeThroughTransition(
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              )),
          child: homeScreensList.elementAt(controller.currentpage),
        );
      }),
    );
  }
}
