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
        body: RollDice(),
      ),
    );
  }
}

class RollDice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
