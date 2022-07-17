import 'package:flutter/material.dart';
import '../consts/app_colors.dart';
import '../consts/string_constants.dart';

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
          Container(
            height: 30,
            width: 30,
            child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.grey900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.all(3),
                ),
                child: Icon(
                  icon,
                  color: AppColors.grey500,
                )),
          )
        ],
      ),
    );
  }
}
