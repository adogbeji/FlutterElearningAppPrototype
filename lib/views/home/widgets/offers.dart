import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  // List<Image> widgetList = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(itemBuilder: (context, index) {}),
    );
  }
}