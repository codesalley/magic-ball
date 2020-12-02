import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Ask me Anything '),
            ),
            backgroundColor: Color(0xff3158AB),
          ),
          body: MyApp(),
          backgroundColor: Colors.blueAccent,
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNum = 0;
  void shuffle() {
    ballNum = Random().nextInt(4);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          shuffle();
        });
      },
      child: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          color: Colors.blueAccent,
          child: Image(
            image: AssetImage('images/ball${ballNum + 1}.png'),
          ),
        ),
      ),
    );
  }
}
