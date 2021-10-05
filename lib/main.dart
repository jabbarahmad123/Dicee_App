import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('DIECE'),
          backgroundColor: Colors.blueAccent,
        ),
        body: dice(),
      ),
    ),
  );
}

class dice extends StatefulWidget {
  @override
  _diceState createState() => _diceState();
}

class _diceState extends State<dice> {
  var leftimage = 1;
  var rightimage = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftimage = Random().nextInt(5) + 1;
                });
              },
              child: Image(
                image: new AssetImage('images/dice$leftimage.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightimage = Random().nextInt(5) + 1;
                });
              },
              child: Image(
                image: new AssetImage('images/dice$rightimage.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
