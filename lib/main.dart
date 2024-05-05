import 'package:flutter/material.dart';

import 'package:elearning_app_prototype/util/route_names.dart';
import 'package:elearning_app_prototype/views/intro/intro_screen.dart';
import 'package:elearning_app_prototype/views/home/course_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        RouteNames.intro: (context) => const IntroScreen(),
        RouteNames.courseHome: (context) => const CourseHomeScreen(),
      },
    );
  }
}