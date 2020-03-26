import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Begin implementing the Column here.
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Textbox(),
      ],
    );
  }
}
class Textbox extends StatelessWidget{
   Widget build(BuildContext context) {
    return Text(
          'Flutter McFlutter',
          style: Theme.of(context).textTheme.headline5, 
          
      );
   }
}
