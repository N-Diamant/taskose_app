import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/your_page.dart';

class AddNewSubTaskButton extends StatelessWidget {


  const AddNewSubTaskButton({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the specified link
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => YourPage()), // Replace YourPage with the actual page name
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Color(0xFF656CFD), // Replace with your desired button color
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: Colors.white), // Add icon
            SizedBox(width: 8),
            Text(
              'Add New Sub Task',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}