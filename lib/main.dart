import 'dart:math';

import 'package:flutter/material.dart';
import 'package:diceapp/main.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice App'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;
  var rightDice = 1;

  void changeDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Image.asset('images/dice$leftDice.png'),
                onPressed: () {
                  changeDice();
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Image.asset('images/dice$rightDice.png'),
                onPressed: () {
                  changeDice();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}