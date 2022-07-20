import 'package:digital_wallet_app/widgets/app_bottom+nav_bar/purple_light.dart';
import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';
import '../../views/home/home_page_viewmodel.dart';
import '../buttons/bottom_nav_item.dart';

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
                      onButtonPressed: () =>
                          model.onButtonPressed(context, 20, 0),
                    ),
                    BottomNavItem(
                      icon: Icons.add_card,
                      onButtonPressed: () =>
                          model.onButtonPressed(context, 120, 1),
                    ),
                    BottomNavItem(
                      icon: Icons.notifications,
                      onButtonPressed: () =>
                          model.onButtonPressed(context, 222, 1),
                    ),
                    BottomNavItem(
                      icon: Icons.settings,
                      onButtonPressed: () =>
                          model.onButtonPressed(context, 325, 1),
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
