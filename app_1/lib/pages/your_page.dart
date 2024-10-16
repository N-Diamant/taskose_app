import 'package:flutter/material.dart';

class YourPage extends StatelessWidget {
  const YourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Page'),
      ),
      body: const Center(
        child: Text('Create New Task'),
      ),
    );
  }
}