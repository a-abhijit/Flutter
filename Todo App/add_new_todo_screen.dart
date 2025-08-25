import 'package:demoapp/Todo%20App/todo.dart';
import 'package:flutter/material.dart';

class AddNewTodoScreen extends StatefulWidget {
  const AddNewTodoScreen({super.key});

  @override
  State<AddNewTodoScreen> createState() => _AddNewTodoScreenState();
}

class _AddNewTodoScreenState extends State<AddNewTodoScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("add new"),
      ),
body:

Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    children: [

      SizedBox(height: 15,),
      TextField(
        controller: _titleController,
        decoration:
        InputDecoration(
          hintText: "Enter task title",
          labelText: "Title",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
        ),
      ),
      SizedBox(height: 15,),
      TextField(
        controller: _descriptionController,
        decoration:
        InputDecoration(
          hintText: "Enter description",
          labelText: "Description",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))


        ),
      ),
      SizedBox(height: 15,),
      ElevatedButton(onPressed: (){
        TodoClass todo =TodoClass(title: _titleController.text, description: _descriptionController.text, date: DateTime.now(), status: "pending");
        Navigator.pop(context,todo);

      }, child: Text("Save"))
    ],
  ),
),
    );
  }
}
