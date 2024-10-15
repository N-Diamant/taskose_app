import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String projectName;
  final String date;
  final int progress;
  final List<String> avatars;

  ProjectCard({
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
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              projectName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.calendar_today, size: 14),
                SizedBox(width: 5),
                Text(date, style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network('https://via.placeholder.com/150'), // Placeholder for project image
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Progress', style: TextStyle(color: Colors.grey)),
                Text('$progress%', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 5),
            LinearProgressIndicator(value: progress / 100),
            SizedBox(height: 10),
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
