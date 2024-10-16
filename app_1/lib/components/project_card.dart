import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String projectName;
  final String date;
  final int progress;
  final List<String> avatars;

  const ProjectCard({super.key,
    required this.projectName,
    required this.date,
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
              projectName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 14),
                const SizedBox(width: 5),
                Text(date, style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network('https://via.placeholder.com/150'), // Placeholder for project image
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
            LinearProgressIndicator(value: progress / 100),
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
