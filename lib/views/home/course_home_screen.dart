import 'package:flutter/material.dart';

import 'package:elearning_app_prototype/views/home/widgets/course_header.dart';
import 'package:elearning_app_prototype/views/home/widgets/course_search.dart';
import 'package:elearning_app_prototype/views/home/widgets/offers.dart';

class CourseHomeScreen extends StatelessWidget {
  const CourseHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            Column(
              children: [
                Offers(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
