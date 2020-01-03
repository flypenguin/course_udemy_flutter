import 'package:flutter/material.dart';
import "./question.dart";
import "./answer.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _texts = ["A Riddle!", "A Fiddle!", "A Sharmagiddle!"];
  var _cycle = 0;

  void _buttonPressed() {
    // if we do this:
    //_cycle = (_cycle + 1) % _texts.length;
    // ... the text will NOT change!

    setState(() {
      // because we place this IN HERE this works.
      _cycle = (_cycle + 1) % _texts.length;
    });

    print("cycle: $_cycle");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('me title!')),
            body: Column(children: [
              Question(_texts[_cycle]),
              Answer(0, _buttonPressed),
              Answer(1, _buttonPressed),
              Answer(2, _buttonPressed),
            ])));
  }
}
