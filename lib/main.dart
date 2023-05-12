import 'package:flutter/material.dart';

void main() {runApp (EightBall());}

class EightBall extends StatefulWidget {
  
  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('images/ball1.png')
    );
  }
}