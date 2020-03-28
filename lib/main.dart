import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Magic8Ball(),
    ));

class Magic8Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Ask Me Anything',
        ),
      ),
      body: EightBall(),
    );
  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
          ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
