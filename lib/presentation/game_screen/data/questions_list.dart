import 'package:efhamnidz/presentation/game_screen/data/question_model.dart';

List<Question> questionsList = [
  Question(
      number: 1,
      src:
          "assets/images/quizimages/bism.png",
      options: {"بسم": true, "شكرا": false, "الله": false}),
  Question(
      number: 2,
      src: "assets/images/quizimages/allah.png",
      options: {"مرحبا": false, "الرحمان": false, "الله": true}),
  Question(
      number: 3,
      src: "assets/images/quizimages/rahman.png",
      options: {"بسم": false, "صلاة": false, "الرحمان": true}),
  Question(
      number: 4,
      src: "assets/images/quizimages/rahim.png",
      options: {"الله": false, "الرحيم": true, "الاخلاص": false}),
];
