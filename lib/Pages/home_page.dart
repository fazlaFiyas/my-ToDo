import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final List toDoList = [
    ['Learn Flutter', false],
    ['return library book', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: Text('My ToDo'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount:toDoList.length,
        itemBuilder: (BuildContext context, index){
        return Container(
          padding: EdgeInsets.all(20.0),
          child: Text(
            toDoList[index][0],
          ),
        );
      }),
    );
  }
}