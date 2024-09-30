import 'package:flutter/material.dart';

String abc= 'text';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Text('Task',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
 body: Container(
   color: Colors.white,
   child: Column(
     children: [
       Text(abc),
       Task2()
     ],
   ),
 ),
    );
  }
}

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  State<Task2> createState() => _Task2State();
}
TextEditingController text= TextEditingController();
class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: text,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )
          ),
        ),
        TextButton(onPressed: (){
          abc=text.text;
        }, child: Text('Submit'))
      ],
    );
  }
}

