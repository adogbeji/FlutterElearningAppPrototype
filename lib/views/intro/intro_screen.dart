import 'package:flutter/material.dart';

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
            onPressed: () {},
            child: const Text('Getting Started'),
          ),
        ],
      ),
    );
  }
}
