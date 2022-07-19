import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import '../../../consts/app_colors.dart';
import '../../../data/data.dart';

class CarouselIndicators extends StatelessWidget {
  final CarouselController controller;
  final int currentCard;

  const CarouselIndicators({
    Key? key,
    required this.controller,
    required this.currentCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: cards.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => controller.animateToPage(entry.key),
          child: Container(
            width: currentCard == entry.key ? 25 : 8,
            height: 6,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: currentCard == entry.key
                  ? AppColors.purple
                  : AppColors.grey900,
            ),
          ),
        );
      }).toList(),
    );
  }
}
