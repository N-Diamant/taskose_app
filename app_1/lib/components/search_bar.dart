import 'package:flutter/material.dart';
import '../components/profile_avatar.dart';
import '../components/project_card.dart';
import '../components/bottom_nav.dart';
import '../components/search_bar.dart'; // Assuming SearchBar component is separated

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400], // Matching the background color
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header section for profile, greeting, and icons
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row for Profile and Icons (Menu and Notification)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileAvatar(
                      imageUrl: 'https://via.placeholder.com/150',
                      name: 'Jennifer Lyine',
                      greeting: 'Hi Jennifer, Good Morning!',
                    ),
                    // Row for menu and notification icons
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.menu, // Menu icon
                            color: Colors.white, // White color to match the theme
                            size: 25,
                          ),
                          onPressed: () {
                            // Add functionality if needed
                          },
                        ),
                        SizedBox(width: 10), // Spacing between icons
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.notifications, // Notification bell icon
                                color: Colors.white, // White color to match the theme
                                size: 25, // Adjust size as needed
                              ),
                              onPressed: () {
                                // Add functionality if needed
                              },
                            ),
                            Positioned(
                              right: 10,
                              top: 10,
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: Colors.red, // Red dot for notification
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20), // Spacing between profile and search bar
                SearchBar(), // Add the search bar here
              ],
            ),
          ),

          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width, // Ensures full screen width
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Using Row to align 'Recent Projects' and 'View All' like a flex layout
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Projects',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400], // Gray color for "View All"
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ProjectCard(
                    projectName: 'Gaming Platform Web & Mobile App',
                    date: 'June 18, 2022',
                    progress: 78,
                    avatars: [
                      'https://via.placeholder.com/50',
                      'https://via.placeholder.com/50',
                      'https://via.placeholder.com/50',
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Today Tasks',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  // TaskCard(
                  //   taskName: 'Fintech Project',
                  //   progress: 85,
                  //   avatars: [
                  //     'https://via.placeholder.com/50',
                  //     'https://via.placeholder.com/50',
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
