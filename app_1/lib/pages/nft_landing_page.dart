import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/add_new_task.dart';
import 'package:flutter_application_1/components/task.dart';

class NFTLandingPage extends StatelessWidget {
  const NFTLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'NFT Landing Page',
          style: TextStyle(color: Color.fromARGB(255, 39, 39, 39),fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.home, color: Colors.black),
            onPressed: () {
              // Navigate to home
            },
          ),
          IconButton(
            icon: const Icon(Icons.arrow_upward_outlined,
                color: Colors.lightBlue), // Upload icon: ;
            onPressed: () {
              // Handle upload
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz, color: Colors.black),
            onPressed: () {
              // Show more options
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Project banner image
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/img1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Description Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Description',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor amet sint. '
                  'Velit officia consequat duis non deserunt enim velit mollit.',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                Row(
                  children: [
                    Text(
                      'Do Exercitation veniam minim...',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the details page (replace with your navigation code)
                      },
                      child: Text(
                        ' See Details',
                        style: TextStyle(color: Colors.deepPurple[400]),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 24), // Increased spacing

            // Team Section
            Row(
              children: [
                const Icon(Icons.group, color: Colors.grey),
                const SizedBox(width: 8),
                const Text(
                  'Team',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.only(left: 152),
                  child: Row(
                    children: [
                      ...List.generate(
                        8,
                        (index) => const Padding(
                          padding: EdgeInsets.only(right: 0.0),
                          child: CircleAvatar(
                            radius: 15,
                            // backgroundImage: AssetImage('assets/images/avatar_$index.png'),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey[300],
                        child: const Icon(Icons.add, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24), // Increased spacing

            // Leader Section
            Row(
              children: [
                const Icon(Icons.person, color: Colors.grey),
                const SizedBox(width: 8),
                const Text(
                  'Leader',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.only(left: 145),
                  child: const CircleAvatar(
                    radius: 15,
                    // backgroundImage: AssetImage('assets/images/leader.png'),
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Rafi Islam Apon (you)',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 85, 83, 83)),
                ),
              ],
            ),
            const SizedBox(height: 24), // Increased spacing

            // Status Section
            Row(
              children: [
                const Icon(Icons.info, color: Colors.grey),
                const SizedBox(width: 8),
                const Text(
                  'Status',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                const SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 150), // Simulates margin-left
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 244, 75, 134),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
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
            const SizedBox(height: 24), // Increased spacing

            Row(
              children: [
                const Icon(Icons.calendar_today, color: Colors.grey),
                const SizedBox(width: 8),
                const Text(
                  'Due Date',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                const SizedBox(width: 8),
                Transform.translate(
                  offset: const Offset(130, 0),
                  child: Row(
                    children: [
                      Text(
                        'Dec 27, 2024',
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                      IconButton(
                        icon: const Icon(Icons.edit, color: Color.fromARGB(255, 160, 128, 214)),
                        onPressed: () {
                          // Edit due date
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24), // Increased spacing

            // Attachment Section
            Row(
              children: [
                const Icon(Icons.attach_file, color: Colors.grey),
                const SizedBox(width: 8),
                const Text(
                  'Attachment',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                const SizedBox(width: 8),
                Transform.translate(
                  offset: const Offset(110, 0), // Moves 30px to the right
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 133, 93, 203), // Set the border color: ;
                        width: 1, // Set the border width to 1 pixel
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.file_present, color: Colors.deepPurple[400]),
                        const SizedBox(width: 4),
                        Text(
                          'References.pdf',
                          style: TextStyle(color: Colors.deepPurple[400]),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Transform.translate(
                  offset: const Offset(110, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add new attachment
                    },
                    child: const Text('Add'),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30), // Increased spacing

            // Custom Section Button
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50.0, // Wider width (90% of parent)
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 242, 233, 255), // Background color
                borderRadius:
                    BorderRadius.circular(11), // Reduced border radius
              ),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add custom section
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .transparent, // Make the button background transparent
                    elevation: 0, // Remove shadow elevation
                    padding: const EdgeInsets.symmetric(
                        vertical: 12), // Adjust padding if necessary
                  ).copyWith(
                    // Remove hover color
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                  ),
                  child: Text(
                    'Add Custom Section',
                    style: TextStyle(color: Color(0xFF656CFD)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            //sub tasks section
            const Text('Sub Task(3)',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),

            const SizedBox(height: 16),

            const MyTask(taskName: 'define problem with client', taskCompleted: false),
            const SizedBox(height: 16),
            const MyTask(taskName: 'create wireframe and userflow', taskCompleted: false),
            const SizedBox(height: 16),
            const MyTask(taskName: 'project setup and brief', taskCompleted: false),

            const SizedBox(height: 20),
            const AddNewSubTaskButton(),
          ],

        ),
      ),
    );
  }
}
