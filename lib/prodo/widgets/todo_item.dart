import 'package:flutter/material.dart';
import 'package:flutter_full/prodo/model/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
          onPressed: () {}, child: Text(todo.name)),
    );
  }
}
