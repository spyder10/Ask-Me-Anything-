import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                imageNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image(
              image: AssetImage('images/ball$imageNumber.png'),
            ),
          ),
        ),
      ],
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Ball(),
    );
  }
}
