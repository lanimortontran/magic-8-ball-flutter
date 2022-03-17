import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Magic8BallPage(),
      ),
    );

class Magic8BallPage extends StatelessWidget {
  const Magic8BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue,
      body: Magic8Ball(),
    );
  }
}

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({Key key}) : super(key: key);

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int answerNumber;

  @override
  void initState() {
    super.initState();
    shakeBall();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => shakeBall(),
        child: Image.asset('images/ball$answerNumber.png'),
      ),
    );
  }

  void shakeBall() {
    setState(() {
      answerNumber = Random().nextInt(5) + 1;
      print(answerNumber);
    });
  }
}
