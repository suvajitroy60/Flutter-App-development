import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Xylophone',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: xyloapp(),
      ),
    ),
  );
}
class xyloapp extends StatelessWidget {
  Expanded playnode({int n,Color color}){
    final nodeplayer = AudioCache();
    return Expanded(
      child: FlatButton(onPressed: (){
        nodeplayer.play('note$n.wav');

      },
        color: color,
    ),
    );
    }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        playnode(n: 1,color : Colors.red),
        playnode(n: 2,color : Colors.orange),
        playnode(n: 3,color : Colors.yellow),
        playnode(n: 4,color : Colors.green),
        playnode(n: 5,color : Colors.teal),
        playnode(n: 6,color : Colors.blue),
        playnode(n: 7,color : Colors.purple),
      ],
    );
  }
}

