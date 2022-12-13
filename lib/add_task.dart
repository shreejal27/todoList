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
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Add Your ToDo"),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: task,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Task',
                  hintText: 'Enter your Task to add to the list',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Dont Leave This Field Empty';
                  }
                  return null;
                },
              ),
              // TextFormField(
              //   controller: id,
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Your Id',
              //   ),
              //   validator: (String? value) {
              //     if (value == null || value.isEmpty) {
              //       return 'Please enter username';
              //     }
              //     return null;
              //   },
              // ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      const Text("Hello");
                      // await Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     //CupertinoPageRoute for ios
                      //     builder: (context) => ToDo(
                      //       title: task.text,
                      //       id: id.text,
                      //     ),
                      //   ),
                      // );
                      // formKey.currentState!.reset();
                    }
                  },
                  child: const Text("Save"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
