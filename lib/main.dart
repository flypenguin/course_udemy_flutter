import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(
        id: "t01",
        title: "pizza from eataliano",
        amount: 8.00,
        date: DateTime.now()),
    Transaction(
        id: "t02",
        title: "monokai pro license",
        amount: 9.99,
        date: DateTime.now()),
    Transaction(
        id: "t03",
        title: "coffee from ernst",
        amount: 12.99,
        date: DateTime.now()),
    Transaction(
        id: "t04",
        title: "cake from ernst",
        amount: 9.40,
        date: DateTime.now()),
  ];

  final amountController = TextEditingController();
  final purposeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Flutter App'),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text("CHART"),
                )),
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Card(
                    child: TextField(
                      controller: purposeController,
                      decoration: InputDecoration(labelText: "Purpose"),
                    ),
                  ),
                  Card(
                    child: TextField(
                      controller: amountController,
                      decoration: InputDecoration(labelText: "Amount"),
                    ),
                  ),
                  CupertinoButton(
                    child: Text("Add transaction"),
                    onPressed: () {
                      print(purposeController.text +
                          ": " +
                          amountController.text);
                    },
                  )
                ],
              ),
            ),
            Column(
              children: transactions.map((t) {
                return Card(
                  color: Colors.lime,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(15),
                        padding: EdgeInsets.all(10),
                        height: 60,
                        width: 80,
                        alignment: Alignment.centerRight,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          t.amount.toStringAsFixed(2),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            t.title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(DateFormat.yMMMMEEEEd().format(t.date)),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
