import 'package:flutter/material.dart';
import 'dart:math';

void main() {runApp (
    MaterialApp(
    home: BallPage(
    )
  )
);
}

class EightBall extends StatefulWidget {
  
  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {

  int num = 1;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed:() {
          setState(() {
            num = randomize();
          });
        },
          child: Image.asset('images/ball$num.png'))
    );
  }
}

class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask me Anything'),
        ),
        body: EightBall()
    );
  }
}

int randomize() {
  var num = Random().nextInt(5) + 1;
  return num;
}