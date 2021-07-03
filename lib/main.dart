import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';
// void main() {
//   runApp(new MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'Who\'s your favorite cricketer?',
        'answers': ['Sanath', 'Arjuna', 'Mahela', 'Aravinda']
      }
    ];

    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('My first app'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return new Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
