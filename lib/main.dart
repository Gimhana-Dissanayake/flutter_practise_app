import 'package:flutter/material.dart';

// void main() {
//   runApp(new MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home:Scaffold(
        appBar:new AppBar(
          title: new Text('My first app'),),
        body: Text('This is my default text'),
        ),
      );
  }
}
