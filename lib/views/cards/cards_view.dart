import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_wallet_app/consts/app_colors.dart';
import 'package:digital_wallet_app/util/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../consts/string_constants.dart';
import '../../widgets/title_line.dart';
import 'cards_viewmodel.dart';
import 'components/credit_cards_section.dart';
import 'components/send_money_section.dart';
import 'components/transaction_section.dart';

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
                  CreditCardsSection(
                    controller: _controller,
                    currentCard: model.currentCard,
                    onPageChanged: (index, reason) =>
                        model.onPageChanged(index),
                  ),
                  verticalSpace(20),
                  const SendMoneySection(),
                  verticalSpace(20),
                  const TransactionSection()
                ],
              )),
            ));
  }
}
