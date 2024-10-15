import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/task_list.dart';
// ignore: unused_import
import '../components/task_details.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taskose Dashboard'),
      ),
      body: Column(
        children: [
          Expanded(child: TaskList()),  // A reusable task list component
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/create_task');
            },
            child: Text('Create New Task'),
          ),
        ],
      ),
    );
  }
}
