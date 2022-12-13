import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/model/todo.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final TextEditingController task = TextEditingController();
  final TextEditingController id = TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: task,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Task',
                  hintText: 'Enter your Task to add to the list',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter username';
                  }
                },
              ),
              TextFormField(
                controller: id,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Id',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter username';
                  }
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    await Navigator.of(context).push(
                      MaterialPageRoute(
                        //CupertinoPageRoute for ios
                        builder: (context) => ToDo(
                          title: task.text,
                          id: id.text,
                        ),
                      ),
                    );
                    formKey.currentState!.reset();
                  }
                },
                child: const Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
