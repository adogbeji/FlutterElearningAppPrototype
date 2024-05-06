import 'package:flutter/material.dart';

class CourseHeader extends StatelessWidget {
  const CourseHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Column(
        children: [
          Text(
            'Welcome John',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            'Let\'s learn something new today!',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ]);
  }
}
