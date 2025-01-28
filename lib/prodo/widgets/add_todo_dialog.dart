import 'package:flutter/material.dart';

class AddTodoDialog extends StatelessWidget {
  AddTodoDialog({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add a Todo"),
      content: TextField(
        controller: _controller,
        decoration: const InputDecoration(hintText: 'Type your todo'),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(_controller.text);
            },
            child: const Text("Add"))
      ],
    );
  }
}
