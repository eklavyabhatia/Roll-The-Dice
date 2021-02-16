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

class RollDice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Left Button Pressed');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Right Button Pressed');
              },
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
