import 'package:digital_wallet_app/consts/string_constants.dart';
import 'package:digital_wallet_app/util/ui_helper.dart';
import 'package:digital_wallet_app/views/history/history_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../consts/app_colors.dart';
import '../../widgets/buttons/bottom_nav_item.dart';
import '../history/components/charts_section.dart';
import '../history/components/credit_card_section.dart';
import '../../widgets/title_line.dart';
import 'home_page_viewmodel.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
        viewModelBuilder: () => HomePageViewModel(),
        builder: (context, model, child) => Scaffold(
              backgroundColor: AppColors.black,
              bottomNavigationBar: AppBottomNavBar(
                model: model,
                leftForAnimation: model.leftForAnimation,
              ),
              body: getViewForIndex(model.currentIndex),
            ));
  }
}

class AppBottomNavBar extends StatelessWidget {
  final double leftForAnimation;
  final HomePageViewModel model;

  const AppBottomNavBar({
    Key? key,
    required this.leftForAnimation,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Column(
        children: [
          Stack(
            children: [
              PurpleLight(leftForAnimation: leftForAnimation),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: AppColors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 2,
                    color: AppColors.pink.withOpacity(0.3),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomNavItem(
                      icon: Icons.bar_chart,
                      onButtonPressed: () => model.onButtonPressed(context, 28),
                    ),
                    BottomNavItem(
                      icon: Icons.add_card,
                      onButtonPressed: () =>
                          model.onButtonPressed(context, 115),
                    ),
                    BottomNavItem(
                      icon: Icons.notifications,
                      onButtonPressed: () =>
                          model.onButtonPressed(context, 200),
                    ),
                    BottomNavItem(
                      icon: Icons.settings,
                      onButtonPressed: () =>
                          model.onButtonPressed(context, 290),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PurpleLight extends StatelessWidget {
  const PurpleLight({
    Key? key,
    required this.leftForAnimation,
  }) : super(key: key);

  final double leftForAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: 40,
      left: leftForAnimation,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
      child: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 25,
            spreadRadius: 7,
            color: AppColors.purple,
          ),
        ]),
        height: 30,
        width: 30,
      ),
    );
  }
}

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return const HistoryView();
    // case 1:
    //   return TodoView();
    default:
      return const HistoryView();
  }
}
