// import 'package:elearning_app_prototype/models/course.dart';
// import 'package:elearning_app_prototype/notifier/course_category_change_notifier.dart';
import 'package:elearning_app_prototype/models/course_category.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:elearning_app_prototype/views/home/widgets/course_item.dart';
import 'package:elearning_app_prototype/data_provider/course_data_provider.dart';
import 'package:elearning_app_prototype/notifier/course_category_change_notifier.dart';
import 'package:elearning_app_prototype/models/course.dart';

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: getCourseList(context).map((course) {
        return CourseItem(course: course);
      }).toList(),
    );
  }

  List<Course> getCourseList(BuildContext context) {
    // Let's get selected category using Provider
    var category = Provider.of<CourseCategoryChangeNotifier>(context).category;

    if (category == CourseCategory.all) {
      return CourseDataProvider.courseList;
    }

    return CourseDataProvider.courseList.where((course) => course.courseCategory == category).toList();
  }
}