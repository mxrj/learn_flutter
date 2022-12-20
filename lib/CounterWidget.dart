import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget{
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 42;

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        color: Colors.greenAccent[100],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
               onPressed: () {
            _decrement();
          },
            icon: Icon(Icons.remove)),
          Text('$_count', style: TextStyle(fontSize: 20.0)),
          IconButton(
              onPressed: (){
            _increment();
          }, icon: Icon(Icons.add)),
    ],
    ));
  }

  void _increment(){
    setState(() {
      _count++;
    });
  }
  void _decrement(){
    setState(() {
      _count--;
    });
  }
}


