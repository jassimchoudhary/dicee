import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  diceNum();
                });
              },
              child: Image.asset("images/dice$leftDiceNum.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  diceNum();
                });
              },
              child: Image.asset("images/dice$rightDiceNum.png"),
            ),
          ),
        ],
      ),
    );
  }

  void diceNum() {
    leftDiceNum=Random().nextInt(6)+1;
    rightDiceNum=Random().nextInt(6)+1;
  }
}
