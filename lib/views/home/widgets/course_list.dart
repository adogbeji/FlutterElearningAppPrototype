import 'package:flutter/material.dart';

import 'package:elearning_app_prototype/views/home/widgets/course_item.dart';
import 'package:elearning_app_prototype/data_provider/course_data_provider.dart';

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: CourseDataProvider.courseList.map((course) {
        return CourseItem(course: course);
      }).toList(),
    );
  }
}