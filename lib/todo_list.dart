import 'dart:developer';

import 'package:flutter/material.dart';

import 'model/todo.dart';

class ToDolist extends StatelessWidget {
  const ToDolist({
    Key? key,
    required this.todo,
    required this.onDelete,
  }) : super(key: key);

  final ToDo todo;
  final Function(int id) onDelete;
  //id in pass gareko taha pauna kunchai id lai delete garney ho bhnera

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const SizedBox(
          height: 80,
        ),
        Expanded(
          flex: 1,
          child: Checkbox(
            // ignore: unnecessary_this
            value: todo.isCompleted,
            onChanged: (value) {},
          ),
        ),
        Expanded(
          flex: 10,
          child: Text(
            todo.title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 25),
          ),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            icon: const Icon(
              Icons.delete,
              size: 20,
              // color: Colors.grey,
            ),
            onPressed: () {
              onDelete(todo.id);
            },
          ),
        ),
      ],
    );
  }
}
