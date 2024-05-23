import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  Offers({super.key});

  int _selectedPromo = 0;

  List<Image> widgetList = [
    Image.asset('assets/images/offer/offer1.png'),
    Image.asset('assets/images/offer/offer2.png'),
    Image.asset('assets/images/offer/offer3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
              itemCount: widgetList.length,
              itemBuilder: (context, index) {
                return widgetList[index];
              }),
          // ),

          // CAROUSEL
          Container(
            margin: const EdgeInsets.only(bottom: 30,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 0; index < widgetList.length; index++)
                  createCircle()
              ],
            ),
          ),
        ],
      ),
    );
  }

  // FUNCTION TO CREATE CAROUSEL DOTS
  Widget createCircle() {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 150,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8,),
      width: 8,
      height: 8,
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
