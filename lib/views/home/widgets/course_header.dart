import 'package:flutter/material.dart';

class CourseHeader extends StatelessWidget {
  const CourseHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
      Row(
        children: [
          Container(
            height: 40,
            width: 40,
            child: Icon(Icons.notifications),
          ),
        ],
      ),
    ],);
  }
}
