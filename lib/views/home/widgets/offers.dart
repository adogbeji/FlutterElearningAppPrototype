import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  Offers({super.key});

  List<Image> widgetList = [
    Image.asset('assets/images/offer/offer1.png'),
    Image.asset('assets/images/offer/offer2.png'),
    Image.asset('assets/images/offer/offer3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(itemBuilder: (context, index) {
        return widgetList[index];
      }),
    );
  }
}