import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo/todo_list.dart';

import 'model/todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Colors.blue,
        // foregroundColor: Colors.black,
        onPressed: () {
          showDialog(builder: (BuildContext context) {}, context: context);
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("ToDo App"),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (BuildContext context, int index) {
            return ToDolist(
              todo: todos[index],
            );
          }),
    );
  }

  void showDialog() {
    // flutter defined function
    show(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: const Text("Alert Dialog title"),
          content: const Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            TextButton(
              child: const Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
