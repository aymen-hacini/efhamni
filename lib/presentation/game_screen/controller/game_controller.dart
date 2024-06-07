import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:efhamnidz/core/app_export.dart';
import 'package:efhamnidz/presentation/game_screen/data/questions_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class GameController extends GetxController {
  checkAnswer(bool value, BuildContext context);
  changeQuestion(BuildContext context);
}

class GameControllerImp extends GameController {
  int currentQuestion = 0;
  int score = 0;
  bool ispressed = false;
  @override
  checkAnswer(value, context) {
    ispressed = true;
    if (value) {
      score++;
    } else {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        padding: EdgeInsets.symmetric(vertical: 5),
        title: "Too bad",
        desc: "",
        body: Text(
          "You have learned ${questionsList.length} signs today.\nYour score is $score !",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        buttonsTextStyle: TextStyle(
            fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        btnCancelText: "Exit",
        btnCancelColor: Colors.red,
        btnCancelOnPress: (() => Get.offAllNamed(AppRoutes.homeScreen)),
      )..show();
      ispressed = true;
    }

    update();
  }

  @override
  changeQuestion(BuildContext context) {
    ispressed = false;

    if (currentQuestion == questionsList.length - 1) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.success,
        title: "Congratulations",
        padding: EdgeInsets.symmetric(vertical: 5),
        body: Text(
          "You have learned ${questionsList.length} signs today.\n\nYour score is $score !",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        btnCancelText: "Exit",
        btnCancelColor: Colors.blue ,
        btnCancelOnPress: (() => Get.offAllNamed(AppRoutes.homeScreen)),
      )..show();
    } else {
      currentQuestion++;
    }
    update();
  }
}
