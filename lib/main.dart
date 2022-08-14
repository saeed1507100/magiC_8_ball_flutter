import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue,
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 2;
  
  void updateBallNumber() {
    setState(() {
      print('I got pressed');
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image(
          image: AssetImage('images/ball$ballNumber.png'),
        ),
        onPressed: updateBallNumber,
      ),
    );
  }
}
