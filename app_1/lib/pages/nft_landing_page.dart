import 'package:flutter/material.dart';

class NFTLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'NFT Landing Page',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.home, color: Colors.black),
            onPressed: () {
              // Navigate to home
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_upward_outlined,
                color: Colors.lightBlue), // Upload icon: ;
            onPressed: () {
              // Handle upload
            },
          ),
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.black),
            onPressed: () {
              // Show more options
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Project banner image
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // image: DecorationImage(
                //   image: AssetImage('assets/images/img1.png'),
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
            SizedBox(height: 16),

            // Description Section
            Text(
              'Description',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor amet sint. '
              'Velit officia consequat duis non deserunt enim velit mollit. Do Exercitation veniam minim...',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            GestureDetector(
              onTap: () {
                // Show details
              },
              child: Text(
                'See Details',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(height: 24), // Increased spacing

            // Team Section
            Row(
              children: [
                Icon(Icons.group, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  'Team',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.only(
                      left: 152),
                  child: Row(
                    children: [
                      ...List.generate(
                        8,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: CircleAvatar(
                            radius: 15,
                            // backgroundImage: AssetImage('assets/images/avatar_$index.png'),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey[300],
                        child: Icon(Icons.add, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 24), // Increased spacing

            // Leader Section
            Row(
              children: [
                Icon(Icons.person, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  'Leader',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.only(left: 145),
                  child: CircleAvatar(
                    radius: 15,
                    // backgroundImage: AssetImage('assets/images/leader.png'),
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'Rafi Islam Apon (you)',
                  style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 85, 83, 83)),
                ),
              ],
            ),
            SizedBox(height: 24), // Increased spacing

            // Status Section
            Row(
              children: [
                Icon(Icons.info, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  'Status',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                SizedBox(width: 8),
                Padding(
                  padding: EdgeInsets.only(left: 150), // Simulates margin-left
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 244, 75, 134),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'To Do',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24), // Increased spacing

            Row(
              children: [
                Icon(Icons.calendar_today, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  'Due Date',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                SizedBox(width: 8),


                Transform.translate(
                  offset: Offset(130, 0),
                  child: Row(
                    children: [
                      Text(
                        'Dec 27, 2024',
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                      IconButton(
                        icon: Icon(Icons.edit, color: Colors.grey),
                        onPressed: () {
                          // Edit due date
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 24), // Increased spacing

            // Attachment Section
            Row(
  children: [
    Icon(Icons.attach_file, color: Colors.grey),
    SizedBox(width: 8),
    Text(
      'Attachment',
      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
    ),
    SizedBox(width: 8),


    Transform.translate(
      offset: Offset(110, 0), // Moves 30px to the right
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(Icons.file_present, color: Colors.blue[800]),
            SizedBox(width: 4),
            Text(
              'References.pdf',
              style: TextStyle(color: Colors.blue[800]),
            ),
          ],
        ),
      ),
    ),
    SizedBox(width: 8),


    Transform.translate(
      offset: Offset(110, 0),
      child: ElevatedButton(
        onPressed: () {
          // Add new attachment
        },
        child: Text('Add'),
      ),
    ),
  ],
),

            SizedBox(height: 24), // Increased spacing

            // Custom Section Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add custom section
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[100],
                ),
                child: Text(
                  'Add Custom Section',
                  style: TextStyle(color: Colors.purple[800]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
