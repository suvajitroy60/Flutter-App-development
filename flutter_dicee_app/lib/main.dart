import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Dicee(),
      ),
    ),
  );
}

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftdice = 2;
  int rightdice =5;
  void changedice() {
    leftdice = Random().nextInt(6) + 1;
    rightdice = Random().nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  changedice();
                });
              },
              child: Image.asset('images/dice$leftdice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changedice();
                });
              },
              child: Image.asset('images/dice$rightdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
