import 'package:flutter/material.dart';
import '../components/profile_avatar.dart';
import '../components/project_card.dart';
import '../components/bottom_nav.dart';
import '../components/side_menu.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7980FF), // Matching the background color
      drawer:  Drawer(
        child: SideMenu(), // Your custom side menu component
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Column(
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
                              icon: const Icon(
                                Icons.menu, // Menu icon
                                color: Colors.white, // White color to match the theme
                                size: 25,
                              ),
                              onPressed: () {
                                // This opens the drawer
                                Scaffold.of(context).openDrawer();
                              },
                            ),
                            const SizedBox(width: 10), // Spacing between icons
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                IconButton(
                                  icon: const Icon(
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
                                    decoration: const BoxDecoration(
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
                    const SizedBox(height: 20), // Spacing between profile and search bar
                    // Add the search bar here
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF7980FF), // Light purple background color
                        borderRadius: BorderRadius.circular(15), // Rounded corners
                        border: Border.all(
                          color: const Color.fromARGB(255, 227, 227, 227), // White border
                          width: 1, // 1px width
                        ),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white, // White search icon
                          ),
                          hintText: "Find your task",
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 227, 227, 227), // White hint text color
                          ),
                          border: InputBorder.none, // Remove the default border
                        ),
                        style: TextStyle(
                          color: Color.fromARGB(255, 227, 227, 227), // Text color inside the text field
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width, // Ensures full screen width
                  decoration: const BoxDecoration(
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
                      // Row to align 'Recent Projects' and 'View All' horizontally
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Recent Projects',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigate to the desired page here
                            },
                            child: MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  _isHovered = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  _isHovered = false;
                                });
                              },
                              child: Text(
                                'View All',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: _isHovered ? Colors.black : Colors.grey[400],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      ProjectCard(
                        projectName: 'Gaming Platform Web & Mobile App',
                        date: 'June 18, 2022',
                        progress: 78,
                        avatars: const [
                          'https://via.placeholder.com/50',
                          'https://via.placeholder.com/50',
                          'https://via.placeholder.com/50',
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Today Tasks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 10),
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
          );
        },
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
