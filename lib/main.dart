import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Flutter App'),
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            // one possibility: wrap the Text widget
            Card(
              child: Container(
                child: Text("card 1"),
                width: double.infinity,
                height: 100,
                color: Colors.blue,
              ),
            ),
            // 2nd possibility: wrap card.
            // you see the difference in coloring and Text placements
            Container(
              child: Card(child: Text("card 2")),
              width: double.infinity,
              height: 100,
              color: Colors.red,
            ),
            Card(child: Text("card 3")),
          ],
        ),
      ),
    );
  }
}
