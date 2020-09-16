import 'package:flutter/material.dart';



class NewTodo extends StatefulWidget {
  @override
  _NewTodoState createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {
  var todoarray=[];
  TextEditingController todo=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dyamic Array"),
        ),
      body:Container(
        child:Column(
          children: [
            TextField(
              controller: todo,
              decoration: InputDecoration(
                  hintText: "Enter the task",
                  border: OutlineInputBorder()
              ),
            ),

            RaisedButton(
              color: Colors.blue,
              onPressed: (){
                var nwtask=todo.text;
                print(nwtask);
                setState(() {
                  todoarray.add(nwtask);
                });

              },
              child: Center(child: Text("SUBMIT")),),

            ListView.builder(
                shrinkWrap: true,
                itemCount: todoarray.length == null? 0: todoarray.length,
                itemBuilder: (context,index){
                  return Card(
                    elevation: 10.0,
                    child: ListTile(
                        leading: Icon(Icons.play_for_work),
                        title: Text(todoarray[index],style: TextStyle(color: Colors.indigoAccent,fontSize: 15.0),),
                        trailing: GestureDetector(
                            onTap: (){

                              setState(() {
                                todoarray.removeAt(index);
                              });
                            },

                            child: Icon(Icons.delete))),
                  );

                }),

          ],
        ),
    ),
    ),
    );


  }
}

