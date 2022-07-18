import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_wallet_app/consts/app_colors.dart';
import 'package:digital_wallet_app/util/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../consts/string_constants.dart';
import '../../data/data.dart';
import '../../widgets/buttons/button_with_icon.dart';
import '../../widgets/title_line.dart';
import '../../widgets/visa_card/visa_card.dart';
import 'cards_viewmodel.dart';

class CardsView extends StatelessWidget {
  final CarouselController _controller = CarouselController();

  CardsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CardsViewModel>.reactive(
        disposeViewModel: false,
        initialiseSpecialViewModelsOnce: true,
        viewModelBuilder: () => CardsViewModel(),
        builder: (context, model, child) => Scaffold(
              backgroundColor: AppColors.black,
              body: SafeArea(
                  child: Column(
                children: [
                  const TitleLine(
                    title: StringConstants.myCards,
                    icon: Icons.add,
                  ),
                  verticalSpace(15),
                  CarouselSlider(
                    items: cards,
                    carouselController: _controller,
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) =>
                          model.onPageChanged(index),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: cards.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: model.currentCard == entry.key ? 25 : 8,
                          height: 6,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: model.currentCard == entry.key
                                ? AppColors.purple
                                : AppColors.grey900,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  verticalSpace(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.purple,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text(StringConstants.sendMoney),
                          ),
                        ),
                        horizontalSpace(15),
                        const ButtonWithIcon(
                          iconSize: 25,
                          icon: Icons.more_vert,
                          borderRadius: 9,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ));
  }
}
