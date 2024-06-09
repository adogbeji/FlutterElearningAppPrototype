import 'package:flutter/material.dart';

import 'package:elearning_app_prototype/models/course_category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
          ),
        ),

        const SizedBox(height: 10,),

        SizedBox(
          height: 35,
          child: ListView.builder(
            itemCount: CourseCategory.values.length,
            itemBuilder: (context, index) {
              CourseCategory courseCategory = CourseCategory.values[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
            );
          }),
        ),
      ],
    );
  }
}
