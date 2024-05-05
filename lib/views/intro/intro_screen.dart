import 'package:flutter/material.dart';

import 'package:elearning_app_prototype/util/route_names.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/intro/intro.png'),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Grow your Skills',
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey.shade900,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Choose your favourite course & start learning',
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey.shade500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteNames.courseHome);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(20),
              // ),
            ),
            child: const Text(
              'Getting Started',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
