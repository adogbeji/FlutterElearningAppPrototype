import 'package:flutter/material.dart';

import 'package:elearning_app_prototype/models/course.dart';
import 'package:elearning_app_prototype/data_provider/course_data_provider.dart';

class FeaturedCourses extends StatelessWidget {
  const FeaturedCourses({super.key});

  @override
  Widget build(BuildContext context) {
    List<Course> featuredCourseList = [
      CourseDataProvider.courseList[9],
      CourseDataProvider.courseList[0],
      CourseDataProvider.courseList[1],
      CourseDataProvider.courseList[2],
      CourseDataProvider.courseList[10],
      CourseDataProvider.courseList[5],
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Featured Courses',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800,
              ),
            ),
            const InkWell(
              child: Text(
                'See All',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10,),

        // SHOWS FEATURED COURSES IN HORIZONTAL LISTVIEW    
        SizedBox(
          height: 200,
          child: ListView.builder(itemBuilder: (context, index) {}),
        ),
      ],
    );
  }
}
