import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final List<String> tasks = ['Task 1', 'Task 2', 'Task 3'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(tasks[index]),
          onTap: () {
            Navigator.pushNamed(context, '/task_details', arguments: tasks[index]);
          },
        );
      },
    );
  }
}
