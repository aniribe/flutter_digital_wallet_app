import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';

class ButtonWithIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final double borderRadius;
  final double iconSize;

  const ButtonWithIcon({
    Key? key,
    required this.icon,
    this.size = 30,
    this.borderRadius = 100,
    this.iconSize = 23,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: AppColors.white.withOpacity(0.13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            padding: const EdgeInsets.all(3),
          ),
          child: Icon(
            icon,
            color: AppColors.grey500,
            size: iconSize,
          )),
    );
  }
}
