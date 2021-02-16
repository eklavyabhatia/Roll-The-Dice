import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text('Roll the Dice'),
        ),
        body: SafeArea(
          child: RollDice(),
        ),
      ),
    );
  }
}

class RollDice extends StatefulWidget {
  @override
  _RollDiceState createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  int leftDiceValue = 1;
  int rightDiceValue = 1;

  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceValue = random.nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDiceValue.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceValue = random.nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightDiceValue.png'),
            ),
          ),
        ],
      ),
    );
  }
}
