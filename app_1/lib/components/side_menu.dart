import 'package:flutter/material.dart';

// Reusable Sidebar Navigation Component
class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Color(0xFF8187F3), // Purple color for the header background
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // Logo
                    // Image.network(
                    //   'https://via.placeholder.com/50', // Placeholder image for logo
                    //   width: 50,
                    //   height: 50,
                    // ),
                    const SizedBox(width: 10),
                    // App Name
                    Text(
                      "Task Management App",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Profile Section
                Row(
                  children: [
                     CircleAvatar(
  radius: 35, // Adjust the radius as needed
  backgroundColor: Colors.white, // Set the background color of the circle
  child: Icon(
    Icons.person, // Use person icon for profile
    size: 30,
    color: Colors.grey[400], // Set icon color as in the image
  ),
),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "Good morning",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Jennifer Lyine",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Main Menu Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "MAIN MENU",
              style: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                ExpansionTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  children: [
                    DrawerItem(
                      icon: Icons.dashboard,
                      text: "Home01",
                      onTap: () {
                        // Define actions for Home01 tap
                      },
                    ),
                    DrawerItem(
                      icon: Icons.home,
                      text: "Home02",
                      onTap: () {
                        // Define actions for Home02 tap
                      },
                    ),
                    DrawerItem(
                      icon: Icons.home_repair_service,
                      text: "Home03",
                      onTap: () {
                        // Define actions for Home03 tap
                      },
                    ),
                  ],
                ),
                DrawerItem(
                  icon: Icons.pages,
                  text: "Pages",
                  onTap: () {
                    // Define actions for Pages tap
                  },
                ),
                DrawerItem(
                  icon: Icons.extension,
                  text: "Components",
                  onTap: () {
                    // Define actions for Components tap
                  },
                ),
                DrawerItem(
                  icon: Icons.person,
                  text: "Profile",
                  onTap: () {
                    // Define actions for Profile tap
                  },
                ),
                DrawerItem(
                  icon: Icons.chat,
                  text: "Chat",
                  onTap: () {
                    // Define actions for Chat tap
                  },
                ),
                DrawerItem(
                  icon: Icons.logout,
                  text: "Logout",
                  onTap: () {
                    // Define actions for Logout tap
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Drawer Item Widget
class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const DrawerItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey[400],
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: Colors.grey[400],
      ),
      onTap: () => onTap(),
    );
  }
}