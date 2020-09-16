import 'package:flutter/material.dart';



class Patient extends StatefulWidget {
  @override
  _PatientState createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  var parray=[];
  var parray1=[];
  TextEditingController pname=TextEditingController();
  TextEditingController pdisease=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Enter patient details"),
        ),

       body:Container(
     child:Column(
      children: [
        TextField(
          controller: pname,
          decoration: InputDecoration(
              hintText: "Enter the patient name",
              border: OutlineInputBorder()
          ),
        ),

        TextField(
          controller: pdisease,
          decoration: InputDecoration(
              hintText: "Enter the disease",
              border: OutlineInputBorder()
          ),
        ),

        RaisedButton(
          color: Colors.blue,
          onPressed: (){
            var p1=pname.text;
            var p2=pdisease.text;

            // print(nwtask);
            setState(() {
              parray.add(p1);
              parray1.add(p2);
            });

          },
          child: Center(child: Text("SUBMIT")),),

        ListView.builder(
            shrinkWrap: true,
            itemCount: parray.length == null? 0: parray.length,
            itemBuilder: (context,index){
              return Card(
                elevation: 10.0,
                child: ListTile(
                    leading: Icon(Icons.play_for_work),
                    title: Text(parray[index],style: TextStyle(color: Colors.indigoAccent,fontSize: 15.0),),
                    subtitle: Text("Disease:"+parray1[index],style: TextStyle(color: Colors.indigo,fontSize: 10.0),),
                    trailing: GestureDetector(
                        onTap: (){

                          setState(() {
                            parray.removeAt(index);
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

