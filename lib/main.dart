import 'package:flutter/material.dart';
import 'package:flutterdynamic/Search.dart';
import 'package:flutterdynamic/todo.dart';

void main()
{
  runApp(Todo());
}

class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dynamic Array"),
        ),
        body: Search(),
      ),
    );
  }
}
