import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/intro/intro.png',),
          const SizedBox(
            height: 30,
          ),
          const Text('Grow Your Skills'),
        ],
      ),
    );
  }
}