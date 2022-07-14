import 'package:flutter/material.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/string_constants.dart';

class TitleLine extends StatelessWidget {
  const TitleLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          StringConstants.history,
          style: TextStyle(
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
              child: const Icon(
                Icons.more_vert,
                color: AppColors.grey500,
              )),
        )
      ],
    );
  }
}
