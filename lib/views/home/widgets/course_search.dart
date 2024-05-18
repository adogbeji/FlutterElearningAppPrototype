import 'package:flutter/material.dart';

class CourseSearch extends StatelessWidget {
  const CourseSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search for courses...',
        hintStyle: TextStyle(color: Colors.grey.shade400),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 10,),
          child: Icon(Icons.search, size: 20,),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}