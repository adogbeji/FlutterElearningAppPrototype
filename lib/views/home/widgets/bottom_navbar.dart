import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  final int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home),
                SizedBox(height: 5,),
                Text('Home', style: TextStyle(fontSize: 13,),),
              ],
            ),
          ),
          Text('My Courses'),
          Text('Wishlist'),
          Text('Account'),
        ],
      ),
    );
  }

  Color getSelectedColor(int optionIndex) {
    return (selectedIndex == optionIndex) ? Colors.blue: Colors.grey.shade800;
  }
}