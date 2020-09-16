
import 'package:flutter/material.dart';
import 'package:flutterdynamic/book.dart';
import 'package:flutterdynamic/patient.dart';
import 'package:flutterdynamic/student.dart';
import 'package:flutterdynamic/todo.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(colors: [Colors.redAccent,Colors.blue,Colors.greenAccent])
      ),
      child: Column(
        children: [
          SizedBox(height: 80.0),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Book()));

          },
            child: Center(child: Text("BOOK",style: TextStyle(color: Colors.pinkAccent),)),),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Patient()));

          },
            child: Center(child: Text("PATIENT",style: TextStyle(color: Colors.purple),)),),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Student()));

          },
            child: Center(child: Text("STUDENT",style: TextStyle(color: Colors.blueGrey),)),),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NewTodo()));

          },
            child: Center(child: Text("TODO",style: TextStyle(color: Colors.cyan),)),)

        ],

      ),
    );
  }
}