import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:elearning_app_prototype/notifier/course_category_change_notifier.dart';

class CategoryCourseList extends StatelessWidget {
  const CategoryCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => CourseCategoryChangeNotifier(),);
  }
}