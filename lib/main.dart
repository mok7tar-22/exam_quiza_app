import 'package:exam_quiza_app/winner_screen.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'loser_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void playAgain() {
    Navigator.of(context).pushNamed(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        WinnerScreen.routeName: (context) => WinnerScreen(),
        LoserScreen.routeName: (context) => LoserScreen(),
      },
    );
  }
}
