import 'package:flutter/material.dart';

class MyTask extends StatefulWidget {
  final String taskName;
  final bool taskCompleted;
  const MyTask({
    super.key,
    required this.taskName,
    required this.taskCompleted,
  });

  @override
  State<MyTask> createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  bool taskCompleted = false;
  String taskName = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align content horizontally
        children: [
          Text(
            widget.taskName, // Use widget.taskName for received value
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                taskCompleted = !taskCompleted;
              });
            },
            child: Container(
              width: 24,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: taskCompleted ? Colors.green : Colors.white,
                border: Border.all(
                  color: taskCompleted ? Colors.transparent : Colors.grey,
                  width: 1.5,
                ),
              ),
              child: Center(
                child: Icon(
                  taskCompleted ? Icons.check : null,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}