import 'package:flutter/foundation.dart';
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
            },
          ),

          // CAROUSEL
          Container(
            margin: const EdgeInsets.only(
              bottom: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 0; index < widgetList.length; index++)
                  if (index == _selectedPromo) ...[createCircle(true)] else
                    createCircle(false)
              ],
            ),
          ),
        ],
      ),
    );
  }

  // FUNCTION TO CREATE CAROUSEL DOTS
  Widget createCircle(bool isCurrent) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 150,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      width: isCurrent ? 12 : 8,
      height: isCurrent ? 12 : 8,
      decoration: BoxDecoration(
        color: isCurrent ? Colors.orange : Colors.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
