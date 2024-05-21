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
      child: PageView.builder(
          itemCount: widgetList.length,
          itemBuilder: (context, index) {
            return widgetList[index];
          }),

      // CAROUSEL
      // Container(
      //   child: Row(
      //     children: [
      //       for (int index = 0; index < widgetList.length; index++)
      //     ],
      //   ),
      // ),
    );
  }

  // FUNCTION TO CREATE CAROUSEL DOTS
  Widget createDot() {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 150,
      ),
      width: 8,
      height: 8,
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
    );
  }
}
