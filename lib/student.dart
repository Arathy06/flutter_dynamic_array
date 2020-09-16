import 'package:flutter/material.dart';



class Student extends StatefulWidget {
  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  var sarray=[];
  var sarray1=[];
  var sarray2=[];
  var sarray3=[];
  TextEditingController sname=TextEditingController();
  TextEditingController sroll=TextEditingController();
  TextEditingController sadm=TextEditingController();
  TextEditingController scol=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Enter student details"),
        ),

       body:Container(
         child:Column(
          children: [
           TextField(
          controller: sname,
          decoration: InputDecoration(
              hintText: "Enter the student name",
              border: OutlineInputBorder()
          ),
        ),

        TextField(
          controller: sroll,
          decoration: InputDecoration(
              hintText: "Enter rollno",
              border: OutlineInputBorder()
          ),
        ),

        TextField(
          controller: sadm,
          decoration: InputDecoration(
              hintText: "Enter the admission no",
              border: OutlineInputBorder()
          ),
        ),

        TextField(
          controller: scol,
          decoration: InputDecoration(
              hintText: "Enter the college",
              border: OutlineInputBorder()
          ),
        ),

        RaisedButton(
          color: Colors.blue,
          onPressed: (){
            var s1=sname.text;
            var s2=sroll.text;
            var s3=sadm.text;
            var s4=scol.text;

            // print(nwtask);
            setState(() {
              sarray.add(s1);
              sarray1.add(s2);
              sarray2.add(s3);
              sarray3.add(s4);
            });

          },
          child: Center(child: Text("SUBMIT")),),

        ListView.builder(
            shrinkWrap: true,
            itemCount: sarray.length == null? 0: sarray.length,
            itemBuilder: (context,index){
              return Card(
                elevation: 10.0,
                child: ListTile(
                    leading: Icon(Icons.play_for_work),
                    title: Text(sarray[index],style: TextStyle(color: Colors.indigoAccent,fontSize: 15.0),),
                    subtitle: Text("Roll No:"+sarray1[index]+"\n"+"Admn No:"+sarray2[index]+"\n"+"College"+sarray3[index]),
                    trailing: GestureDetector(
                        onTap: (){

                          setState(() {
                            sarray.removeAt(index);
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

