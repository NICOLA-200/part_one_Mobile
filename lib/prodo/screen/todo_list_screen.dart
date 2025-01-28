import 'package:flutter/material.dart';
import 'package:flutter_full/prodo/model/todo.dart';
import 'package:flutter_full/prodo/widgets/add_todo_dialog.dart';
import 'package:flutter_full/prodo/widgets/todo_item.dart';

class TodoListScreen extends StatefulWidget {
  TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final List<Todo> todos = <Todo>[];

  void _addTodoItem(String value) {
    todos.add(Todo(name: value, completed: false));
    setState(() {});
  }
    void _handleTodoChange(Todo todo) {
      setState(() {
        todo.completed = !todo.completed;
      });
    }

    void _deleteTodoItem(Todo todo) {
      setState(() {
        todos.remove(todo);
      });
    }

      Future<void> _showDialog() async {
       final name = await showDialog<String>(context: context,
        builder: (context) => AddTodoDialog(),);

           if (name != null && name.isNotEmpty) {
      _addTodoItem(name);
    }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialog,
       child: const Icon(Icons.add_ic_call),),
      appBar: AppBar(
        title: const Text("todos"),
      ),
      body: Center(
        child: ListView(
          children: todos.map((todo) {
            return TodoItem(
              todo: todo,
              onTodoChanged: _handleTodoChange,
              removeTodo: _deleteTodoItem,

              
            );
          }).toList(),
        ),
      ),
    );
  }
}
