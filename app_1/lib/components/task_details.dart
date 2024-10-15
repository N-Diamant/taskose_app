import 'package:flutter/material.dart';

class TaskDetailsPage extends StatelessWidget {
  final String taskName;

  TaskDetailsPage({required this.taskName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Details'),
      ),
      body: Center(
        child: Text('Details of $taskName'),
      ),
    );
  }
}
