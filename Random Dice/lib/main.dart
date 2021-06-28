import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice'),
          centerTitle: true,
        ),
        backgroundColor: Colors.redAccent,
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 2;
  int rightDice = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
            child: Image.asset('images/dice$leftDice.png'),
            onPressed: () {
              setState(() {
                leftDice = Random().nextInt(6) + 1;
                rightDice = Random().nextInt(6) + 1;
              });
            },
          ),
        ),
        Expanded(
          child: TextButton(
            child: Image.asset('images/dice$rightDice.png'),
            onPressed: () {
              setState(() {
                rightDice = Random().nextInt(6) + 1;
                leftDice = Random().nextInt(6) + 1;
              });
            },
          ),
        ),
      ]),
    );
  }
}
