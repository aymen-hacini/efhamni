import 'package:efhamnidz/core/app_export.dart';
import 'package:efhamnidz/presentation/game_screen/controller/game_controller.dart';
import 'package:efhamnidz/presentation/game_screen/data/questions_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GameScreen extends GetView<GameControllerImp> {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext ctx) {
    Get.lazyPut(() => GameControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Sign Language"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Choose The right answer",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            GetBuilder<GameControllerImp>(builder: (context) {
              return Text(
                "Question n${questionsList.elementAt(controller.currentQuestion).number}/${questionsList.length}",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              );
            }),
            GetBuilder<GameControllerImp>(
              builder: (context) => ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    questionsList.elementAt(controller.currentQuestion).src,
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            GetBuilder<GameControllerImp>(
              builder: (context) => Column(
                children: [
                  ...questionsList
                      .elementAt(controller.currentQuestion)
                      .options
                      .entries
                      .map((e) => InkWell(
                          onTap: () => controller.checkAnswer(e.value, ctx),
                          child: ChoiceCard(
                            text: e.key,
                            mycolor: controller.ispressed
                                ? e.value
                                    ? Colors.green
                                    : Colors.red
                                : Color.fromARGB(255, 177, 237, 245),
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Color.fromARGB(255, 65, 146, 212),
                          padding: EdgeInsets.symmetric(
                              horizontal: 100, vertical: 20)),
                      onPressed: () => controller.changeQuestion(ctx),
                      child: Text(
                        "Next Sign ",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChoiceCard extends StatelessWidget {
  final String text;
  final Color mycolor;
  const ChoiceCard({
    super.key,
    required this.text,
    required this.mycolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 80,
        width: double.infinity - 100,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: 1,
                  color: const Color.fromARGB(98, 0, 0, 0),
                  offset: Offset(2, 2),
                  blurRadius: 3)
            ],
            borderRadius: BorderRadius.circular(25),
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  // const
                  mycolor,
                  Color.fromARGB(255, 255, 255, 255)
                ])),
        child: Text(
          text,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
