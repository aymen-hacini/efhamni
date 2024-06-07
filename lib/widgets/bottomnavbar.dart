import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:efhamnidz/presentation/home/homecontroller.dart';
import 'package:efhamnidz/widgets/navbar_icon_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyNavBar extends GetView<HomeScreenControllerImp> {
  const MyNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
        splashSpeedInMilliseconds: 500,
        splashRadius: 30,
        elevation: 10,
        notchSmoothness: NotchSmoothness.softEdge,
        splashColor: Colors.orange,
        icons: [
          NavbarIcon.img_material_symbol,
          NavbarIcon.img_settings,
          NavbarIcon.img_iconamoon_profile_fill,
          NavbarIcon.img_material_symbol_gray_400_01
        ],
        activeColor: Colors.orange,
        inactiveColor: Colors.black,
        gapLocation: GapLocation.center,
        activeIndex: controller.currentpage,
        onTap: (index) {
          controller.currentpage = index;
          controller.pageNavigation(index);
        });
  }
}
