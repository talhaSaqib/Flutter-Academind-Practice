import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My Expenses', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Expenses'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: Text('Chart'),
            ),
            UserTransactions()
          ],
        ),
      ),
    );
  }
}
