import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

void buttonPressed() {}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('me title!')),
            body: Column(children: [
              Text("A question"),
              RaisedButton(
                child: Text("PRESS! PRESS!"),
                onPressed: () => print("Hi"),
              )
            ])));
  }
}
