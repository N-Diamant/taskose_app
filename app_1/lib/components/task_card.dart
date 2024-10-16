import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String taskName;
  final int progress;
  final List<String> avatars;

  const TaskCard({super.key,
    required this.taskName,
    required this.progress,
    required this.avatars,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              taskName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Progress', style: TextStyle(color: Colors.grey)),
                Text('$progress%', style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 5),
            CircularProgressIndicator(value: progress / 100),
            const SizedBox(height: 10),
            Row(
              children: avatars.map((url) {
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: CircleAvatar(radius: 12, backgroundImage: NetworkImage(url)),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
