import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Magic BAll",
      home: MagicBall(),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int value=1;
  void buttonpressed(){
    setState(() {
      value=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text("Ask me Anything"),
      ),
      body: FlatButton(
        child: Center(
          child: Image.asset("images/ball$value.png"),
        ),
        onPressed:buttonpressed,
      ),
    );
  }
}
