import 'package:demoapp/Todo%20App/add_new_todo_screen.dart';
import 'package:demoapp/Todo%20App/todo.dart';
import 'package:flutter/material.dart';

class Todoapp extends StatefulWidget {
  const Todoapp({super.key});

  @override
  State<Todoapp> createState() => _TodoappState();
}

class _TodoappState extends State<Todoapp> {
  List<TodoClass> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Todo App",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body:

      ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          TodoClass todo =
              todoList[index]; //It stores the object fetched from the list at position index
          return Card(
            elevation: 0.6,
            child: ListTile(
              onLongPress: (){
                todoList.removeAt(index);
                setState(() {
                });},

              title: Text(todo.title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(todo.description), Text(todo.date.toString())],
              ),
              trailing: Text(todo.status),

            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          // TodoClass todo =TodoClass(title: "title",
          //     description: "test",
          //     date: DateTime.now(),
          //     status: "pending");
          // todoList.add(todo);
          // setState(() {

          TodoClass? todo=
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNewTodoScreen()),
          );
          if(todo != null){
            todoList.add(todo);
            setState((){});
          }
        },
      ),
    );
  }
}
