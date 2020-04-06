import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quizbrain.dart';

import 'package:rflutter_alert/rflutter_alert.dart';


QuizBrain quizbrain = QuizBrain();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.pink[600],
          title:
          Center(
            child: Text('Quizzler',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: quiz(),
      ),
    );
  }
}
class quiz extends StatefulWidget {
  @override
  _quizState createState() => _quizState();
}

class _quizState extends State<quiz> {
 //int questionnumber = 0;
  List<Icon> score = [];
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizbrain.getanswer();

    setState(() {
      if (quizbrain.isFinished() == true) {

        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        quizbrain.reset();

        score = [];
      }

      else {
        if (userPickedAnswer == correctAnswer) {
          score.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          score.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizbrain.nextQuestion();
      }
    });
  }
//  void checkanswer(bool useranswer){
//    setState(() {
//      if (quizbrain.getanswer(questionnumber) == useranswer){
//        score.add(Icon(Icons.check,color: Colors.green,),);
//      }
//      else{
//        score.add(Icon(Icons.close,color: Colors.red,),);
//      }
//      quizbrain.nextQuestion();
//    });
//  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 10,
            child:
            Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Text(quizbrain.getquestion(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child:
            FlatButton(onPressed: () {
              checkAnswer(true);
            },
                color: Colors.green,
                child:Text('True',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                )
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child:
                FlatButton(onPressed: (){
                  checkAnswer(false);
                },
                color: Colors.red,
                child:Text('False',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: score,
          ),
        ),
      ],
    );
  }
}


