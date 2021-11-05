import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class LoserScreen extends StatelessWidget {
  static const routeName = "LoserScreen";

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
        children: [
          Image(
            image: AssetImage('assets/images/loser.jpg'),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey),
              ),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(HomeScreen.routeName);
              },
              child: Text("Play Again", style: TextStyle(fontSize: 20))),
        ],
      )),
    );
  }
}
