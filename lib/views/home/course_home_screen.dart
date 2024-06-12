import 'package:flutter/material.dart';

import 'package:elearning_app_prototype/views/home/widgets/course_header.dart';
import 'package:elearning_app_prototype/views/home/widgets/course_search.dart';
import 'package:elearning_app_prototype/views/home/widgets/offers.dart';
import 'package:elearning_app_prototype/views/home/widgets/featured_courses.dart';
import 'package:elearning_app_prototype/views/home/widgets/category_list.dart';
import 'package:elearning_app_prototype/views/home/widgets/course_list.dart';

class CourseHomeScreen extends StatelessWidget {
  const CourseHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 170,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10,),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      CourseHeader(),
                      SizedBox(height: 20,),
                      Expanded(child: CourseSearch(),),
                    ],
                  ),
                ),
              ),
          
              // OFFERS
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Offers(),
                    const FeaturedCourses(),
                    const CategoryList(),
                    const CourseList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
