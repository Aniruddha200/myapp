import 'package:flutter/material.dart';
import 'interview_assignment_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 350,
          height: 500,
          child: InterviewAssignmentWidget(
            title: "Interview",
            subtitle: "assignment by [YOUR NAME]",
            thumbnailImage: "https://images.unsplash.com/photo-1572635148744-e439c3c1a98a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFraW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
            userProfileImages: [
              "https://images.unsplash.com/photo-1539571696350-5a78e444033d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
              "https://images.unsplash.com/photo-1558898479-311d85450e11?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
            ],
            views: "18.6M",
          ),
        ),
      ),
    );
  }
}