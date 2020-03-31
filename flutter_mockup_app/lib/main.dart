import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[900],
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 40.0),
          child: SafeArea(
            child:
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/profile.jpeg'),
                ),
                Text(
                  'Suvajit Roy',
                  style: TextStyle(
                    fontFamily: 'Rockwell',
                    fontSize: 45.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                  height: 70.0,
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.local_phone,),
                    title: Text(
                      '+91 8334870221',
                    ),
                ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.email,),
                    title: Text(
                      'suvajitroy60@gmail.com',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ),
      );
  }
}

