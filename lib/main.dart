import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MagicBall());
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  List<String> ballTexts = [
    "Yes",
    "No",
    "Go for it!",
    "Absolutly not!",
    "Shake again",
    "Dont ask me question like this",
    "Ask yo mama",
    "Ask again tomorrow"
  ];
  void randomizeBallNumer() {
    setState(() {


    int previousNumber = ballNumber;
    ballNumber = Random().nextInt(ballTexts.length - 1) + 1;
    if (ballNumber == previousNumber && ballNumber < ballTexts.length - 1)
      ballNumber++;
    else if (ballNumber == previousNumber && ballNumber > 1) ballNumber--;
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MagicBall"),
          backgroundColor: Colors.blue[200],
        ),
        backgroundColor: Colors.blue[200],
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    randomizeBallNumer();
                  },
                  child: Image.asset("imgs/ballTemplate.png"),
                  padding: EdgeInsets.only(
                      left: 20.0, right: 26.0, top: 35.0, bottom: 17.0)),
              FlatButton(
                onPressed: () {
                  randomizeBallNumer();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(90))),
                  width: 125.0,
                  height: 125.0,
                    child: Center(child: Text(ballTexts[ballNumber],
                    textAlign: TextAlign.center,)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
