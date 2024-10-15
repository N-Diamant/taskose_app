import 'package:flutter/material.dart';
import 'pages/dashboard_page.dart';

void main() {
  runApp(TaskoseApp());
}

class TaskoseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskose Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardPage(),
    );
  }
}
