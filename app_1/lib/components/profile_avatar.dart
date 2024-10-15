import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String greeting;

  ProfileAvatar({
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
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi $name,',
              style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold),
            ),
            Text(
              greeting,
              style: TextStyle(fontSize: 14,color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
