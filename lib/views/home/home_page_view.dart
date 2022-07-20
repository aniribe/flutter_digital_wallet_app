import 'package:animations/animations.dart';
import 'package:digital_wallet_app/views/history/history_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../consts/app_colors.dart';
import '../../widgets/app_bottom+nav_bar/app_bottom_nav_bar.dart';
import '../cards/cards_view.dart';
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
              body: PageTransitionSwitcher(
                child: getViewForIndex(model.currentIndex),
                duration: const Duration(milliseconds: 200),
                reverse: model.reverse,
                transitionBuilder: (Widget child, Animation<double> animation,
                        Animation<double> secondAnimation) =>
                    SharedAxisTransition(
                  child: child,
                  animation: animation,
                  secondaryAnimation: secondAnimation,
                  transitionType: SharedAxisTransitionType.horizontal,
                ),
              ),
            ));
  }
}

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return const HistoryView();
    case 1:
      return CardsView();
    default:
      return const HistoryView();
  }
}
