import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String greeting;

  const ProfileAvatar({super.key,
    required this.imageUrl,
    required this.name,
    required this.greeting,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl), // Sample image
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi $name,',
              style: const TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold),
            ),
            Text(
              greeting,
              style: const TextStyle(fontSize: 14,color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
