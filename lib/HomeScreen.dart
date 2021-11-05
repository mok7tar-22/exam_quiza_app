import 'dart:math';

import 'package:exam_quiza_app/winner_screen.dart';
import 'package:flutter/material.dart';

import 'loser_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "HomeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentQuestion = 1, numberYes = 0, numberNo = 0;
   late  List randomNumber;
  static const List<String> questions = [
    'Have you ever wrote a letter?',
    'Have you ever smoked a cigarette?',
    'Have you ever had a fight with someone who was too old?',
    'Have you ever been on the radio or on television?',
    'Have you ever stayed awake for an entire night?',
    'Have you ever broken something, like a window, and ran away?',
    'Have you ever won a contest and received a prize?',
    'Have you ever met a famous person or a celebrity?',
  ];
  int index = Random().nextInt(questions.length - 1);


  void nextQuestion() {
    if (currentQuestion < 5) {
      index = Random().nextInt(7);
      currentQuestion++;
      index++;
    } else {
      if (numberYes > numberNo) {
        Navigator.of(context).pushReplacementNamed(WinnerScreen.routeName);
      } else {
        Navigator.of(context).pushReplacementNamed(LoserScreen.routeName);
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Have You Ever",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${questions[index]}",
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {
                  nextQuestion();
                  numberYes++;
                },
                child: Text(
                  "Yes",
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  nextQuestion();
                  numberNo++;
                },
                child: Text("No", style: TextStyle(fontSize: 20))),
          ],
        ),
      ),
    );
  }
}
