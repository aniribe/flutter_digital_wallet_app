import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import '../../../data/data.dart';
import 'carousel_indicators.dart';

class CreditCardsSection extends StatelessWidget {
  final CarouselController controller;
  final int currentCard;
  final Function(int, CarouselPageChangedReason)? onPageChanged;

  const CreditCardsSection({
    Key? key,
    required this.controller,
    required this.currentCard,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CarouselSlider(
            items: cards,
            carouselController: controller,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: false,
              aspectRatio: 2.2,
              viewportFraction: 0.85,
              enableInfiniteScroll: false,
              padEnds: false,
              clipBehavior: Clip.antiAlias,
              onPageChanged: onPageChanged,
            ),
          ),
        ),
        CarouselIndicators(controller: controller, currentCard: currentCard),
      ],
    );
  }
}
