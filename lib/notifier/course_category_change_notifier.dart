import 'package:flutter/material.dart';

import 'package:elearning_app_prototype/models/course_category.dart';

class CourseCategoryChangeNotifier extends ChangeNotifier {
  CourseCategory _category = CourseCategory.all;

  // CourseCategory get category => _category;
  CourseCategory get category {
    return _category;
  }

  void changeCategory(CourseCategory category) {
    _category = category;
    notifyListeners();
  }
}