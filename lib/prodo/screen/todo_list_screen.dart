import 'package:flutter/material.dart';
import 'package:flutter_full/prodo/model/todo.dart';
import 'package:flutter_full/prodo/widgets/todo_item.dart';

class TodoListScreen extends StatefulWidget {
  TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final List<Todo> todos = <Todo>[];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("todos"),
      ),
      body: Center(
        child: ListView(
          children: todos.map((todo) {
            return TodoItem();
          }).toList(),
        ),
      ),
    );
  }
}
