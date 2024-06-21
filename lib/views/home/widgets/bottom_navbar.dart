import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home),
              Text('Home'),
            ],
          ),
          Text('My Courses'),
          Text('Wishlist'),
          Text('Account'),
        ],
      ),
    );
  }
}