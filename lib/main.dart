import 'package:flutter/material.dart';
import 'package:flutter_hello_world2/CounterWidget.dart';

import 'HintLabel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Counter on Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HintLabel('tap - to decrement'),
              SizedBox(height: 8.0),
              CounterWidget(),
              SizedBox(height: 8.0),
              HintLabel('tap + to increment')
            ])),
          ),
        );
  }
}

