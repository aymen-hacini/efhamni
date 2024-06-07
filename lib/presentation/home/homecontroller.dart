import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController  {
  pageNavigation(int pageindex);
}

class HomeScreenControllerImp extends HomeScreenController with GetSingleTickerProviderStateMixin{
  int currentpage = 0;
  late AnimationController animcontrol;

  @override
  void onInit() {
    animcontrol =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    super.onInit();
  }

  @override
  void dispose() {
    animcontrol.dispose();
    super.dispose();
  }

  @override
  pageNavigation(int pageindex) {
    currentpage = pageindex;
    update();
  }
}
