import 'package:flutter/material.dart';
import 'package:flutter_full/prodo/screen/todo_list_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListScreen(),
      
    );
  }
}