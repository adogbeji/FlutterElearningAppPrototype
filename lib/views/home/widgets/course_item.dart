import 'package:flutter/material.dart';

import 'package:elearning_app_prototype/models/course.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(course.thumbnailUrl),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Column(
                children: [
                  Text(
                    course.title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
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
}
