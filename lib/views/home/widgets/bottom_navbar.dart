import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  final int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home, color: getSelectedColor(1),),
                const SizedBox(height: 5,),
                Text('Home', style: TextStyle(fontSize: 13, color: getSelectedColor(1),),),
              ],
            ),
          ),
          const Text('My Courses'),
          const Text('Wishlist'),
          const Text('Account'),
        ],
      ),
    );
  }

  Color getSelectedColor(int optionIndex) {
    return (selectedIndex == optionIndex) ? Colors.blue: Colors.grey.shade800;
  }
}