import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/dashboard_page.dart';
import 'package:flutter_application_1/pages/nft_landing_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}



// class ProjectDetailsPage extends StatelessWidget {
//   final String title;

//   ProjectDetailsPage({required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purple,
//         title: Text(title),
//       ),
//       body: Center(
//         child: Text(
//           "Details for $title",
//           style: GoogleFonts.poppins(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
