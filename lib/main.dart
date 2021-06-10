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

  void randomizeBallNumer(){
    int previousNumber = ballNumber;
    ballNumber = Random().nextInt(5) + 1;
    if(ballNumber == previousNumber && ballNumber < 5)
      ballNumber++;
    else if(ballNumber == previousNumber && ballNumber > 1)
      ballNumber--;
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
          child: Container(
            child: FlatButton(
              child: Image.asset("imgs/ball$ballNumber.png"),
              onPressed: () {
                setState(() {
                  randomizeBallNumer();
                });
              },
              padding: EdgeInsets.all(30.0) ,
            ),
          )
        ),
      ),
    );
  }
}


