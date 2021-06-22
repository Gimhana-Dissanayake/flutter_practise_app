import 'package:flutter/material.dart';

// void main() {
//   runApp(new MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
          Text('The question!'),
          RaisedButton(child:Text('Answer 1'), onPressed: null,),
          RaisedButton(child:Text('Answer 2'), onPressed: null,),
          RaisedButton(child:Text('Answer 3'), onPressed: null,)
        ]),
      ),
    );
  }
}
