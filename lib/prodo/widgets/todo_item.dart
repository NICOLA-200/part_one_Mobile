import 'package:flutter/material.dart';
import 'package:flutter_full/prodo/model/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final void Function(Todo todo) removeTodo;
  final void Function(Todo todo) onTodoChanged;


  TodoItem({super.key, required this.todo,required this.onTodoChanged, required this.removeTodo});

   
   TextStyle? _getTextStyle(bool checked) {
       if (!checked) return null;

       return const TextStyle(
        color: Colors.black54,
        decoration: TextDecoration.lineThrough
       );
   }


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onTodoChanged(todo),
      leading: Checkbox(
        value: todo.completed,
        onChanged: (_) => onTodoChanged(todo),
      ),

title: Text(todo.name,
 style:_getTextStyle(todo.completed),
    ),
          trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.red),
        onPressed: () => removeTodo(todo),
      ),

    );

  }
}
