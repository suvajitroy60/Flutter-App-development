import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: [
       
         Text(
          '  12:45',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Roboto',
            color: Colors.black,
          ),
      ),
        Spacer(flex: 19),
         Icon(
          Icons.network_wifi,
          size: 20,
          color: Colors.black,
        ),
        Spacer(flex: 1),
        Icon(
          Icons.battery_charging_full ,
          size: 20,
          color: Colors.green,
        ),
    ],
  );
}
}
