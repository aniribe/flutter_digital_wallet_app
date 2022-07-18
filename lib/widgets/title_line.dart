import 'package:flutter/material.dart';
import '../consts/app_colors.dart';
import 'buttons/button_with_icon.dart';

class TitleLine extends StatelessWidget {
  final String title;
  final IconData icon;

  const TitleLine({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
            ),
          ),
          ButtonWithIcon(icon: icon)
        ],
      ),
    );
  }
}
