import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Task Icon
            Container(
              height: 50,
              width: 45,
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.wallet, // Custom icon (wallet icon from the image)
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(width: 10),

            // Task name and details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fintech Project',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Avatars and comment count
                  Row(
                    children: [
                      // Stack to show profile icons
                      Stack(
                        children: [
                          _buildProfileIcon(Icons.person),
                          Positioned(left: 20, child: _buildProfileIcon(Icons.account_circle)),
                          Positioned(left: 30, child: _buildProfileIcon(Icons.account_circle)),
                          // Positioned(left: 40, child: _buildProfileIcon(Icons.engineering)),
                        ],
                      ),
                      // const SizedBox(width: 10), 
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: const Color(0xFFF2F5FF),
                        child: const Text(
                          '3+',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.comment,
                        color: Colors.grey[400],
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Text('16', style: TextStyle(color: Colors.grey[600])),
                    ],
                  ),
                ],
              ),
            ),

            // Circular progress indicator
            SizedBox(
              width: 50,
              height: 50,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: 0.85, // 85% progress
                    strokeWidth: 4,
                    valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
                    backgroundColor: Colors.grey[200],
                  ),
                  const Center(
                    child: Text(
                      '85%',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to create profile icons
  Widget _buildProfileIcon(IconData iconData) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: CircleAvatar(
        radius: 15,
        backgroundColor: Colors.grey[200],
        child: Icon(
          iconData,
          color: Colors.black,
          size: 16,
        ),
      ),
    );
  }
}
