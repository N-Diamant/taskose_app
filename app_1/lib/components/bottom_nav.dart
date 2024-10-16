import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,   // Remove splash effect
        highlightColor: Colors.transparent, // Remove highlight effect
        hoverColor: Colors.transparent,     // Remove hover effect
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false, // Hide selected labels
        iconSize: 25.0, // Increase icon size
        elevation: 0, // Remove shadow
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: MouseRegion(
              onHover: (_) {}, // Disable any hover interaction
              child: const Icon(Icons.home),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: MouseRegion(
              onHover: (_) {}, // Disable any hover interaction
              child: const Icon(Icons.list_alt),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: MouseRegion(
              onHover: (_) {}, // Disable any hover interaction
              child: const Icon(Icons.messenger_outlined),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: MouseRegion(
              onHover: (_) {}, // Disable any hover interaction
              child: const Icon(Icons.person),
            ),
            label: '',
          ),
        ],
        currentIndex: 0,
        onTap: (int index) {
          // Handle navigation here
        },
      ),
    );
  }
}
