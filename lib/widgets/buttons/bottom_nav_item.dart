import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final VoidCallback onButtonPressed;

  const BottomNavItem({
    Key? key,
    required this.icon,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onButtonPressed,
      icon: Icon(
        icon,
        color: AppColors.grey500,
        size: 32,
      ),
    );
  }
}
