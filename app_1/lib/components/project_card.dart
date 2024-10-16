import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/nft_landing_page.dart';

class ProjectCard extends StatelessWidget {
  final String projectName;
  final String date;
  final int progress;
  final List<String> avatars;
  // Added field for game icon

  const ProjectCard({
    super.key,
    required this.projectName,
    required this.date,
    required this.progress,
    required this.avatars,
  // Pass game icon data
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to the landing page URL on tap
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NFTLandingPage()), // Replace with your landing page widget
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row( // Modified row to display game icon and project name
                    children: [
                      Icon(Icons.on_device_training_rounded, size: 16), // Use the provided gameIcon
                      const SizedBox(width: 5),
                      Text(
                        projectName,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {
                      // Handle the action when the icon is tapped
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row( // Modified row to display date information
                children: [
                  const Icon(Icons.calendar_today, size: 14),
                  const SizedBox(width: 5),
                  Text(date, style: const TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/img1.png',
                  width: double.infinity,
                  height: 200, // Adjust the height as needed
                  fit: BoxFit.cover,
                ), // Placeholder for project image
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
                    child: CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage(url),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}