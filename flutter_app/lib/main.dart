import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Travelling')),
            backgroundColor: Colors.teal,
          ),
          body: Center(
            child: (
              Image(image: AssetImage('images/Asset 1.png'),width: 1080,)
            ),
          ),
        ),
      ),
    );
