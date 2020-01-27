import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(44, 44, 44, 0.5),
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.black38,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
        setState(() {
          ballNumber = Random().nextInt(5) +1;
        });
      },
      child: Center(
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
