import 'package:flutter/material.dart';

void main() {
  runApp(MagicBall());
}



class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MagicBall"),
        ),

      ),
    );
  }
}


