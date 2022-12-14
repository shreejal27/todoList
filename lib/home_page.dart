import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo/add_task.dart';
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
        // ignore: sort_child_properties_last
        onPressed: () => showDialog(
          context: context,
          builder: (context) => const AddTask(),
          barrierDismissible: false,
        ),
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
              onDelete: (id) {
                setState(() {
                  todos.removeWhere((element) => element.id == id);
                });
              },
            );
          }),
    );
  }
}
