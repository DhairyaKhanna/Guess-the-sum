import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Guess the Sum'),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftside = 1;
  int rightside = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    buttonPressed();
                  });
                },
                child: Image.asset('images/dice$leftside.png'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
                child: FlatButton(
              onPressed: () {
                setState(() {
                  buttonPressed();
                });
              },
              child: Image.asset('images/dice$rightside.png'),
            )),
          ],
        ),
      ),
    );
  }

  void buttonPressed() {
    leftside = Random().nextInt(6) + 1;
    rightside = Random().nextInt(6) + 1;
  }
}
