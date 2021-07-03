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
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];

    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('My first app'),
        ),
        body: Column(children: <Widget>[
          Question(questions[_questionIndex]),
        Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ]),
      ),
    );
  }
}
