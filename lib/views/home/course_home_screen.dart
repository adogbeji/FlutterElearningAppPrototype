import 'package:flutter/material.dart';

import 'package:elearning_app_prototype/views/home/widgets/course_header.dart';

class CourseHomeScreen extends StatelessWidget {
  const CourseHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CourseHeader(),
          ],
        ),
      ),
    );
  }
}