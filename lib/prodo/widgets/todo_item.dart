import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: TextButton(onPressed: () {}, child: Icon(Icons.access_time_filled_sharp)),
    );
  }
}
