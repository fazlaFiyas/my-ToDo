import 'package:flutter/material.dart';
import 'package:my_todo/Pages/utils/todo_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List toDoList = [
    ['Learn Flutter', false],
    ['Return library book', false],
    ['Complete notes', false],
  ];

  void checkBoxChanged(int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

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
        return TodoList(
          taskName: toDoList[index][0],
          taskCompleted: toDoList[index][1],
          onChanged: (value)=> checkBoxChanged(index),
        );
      }),
    );
  }
}