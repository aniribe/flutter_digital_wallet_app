import 'package:digital_wallet_app/consts/string_constants.dart';
import 'package:digital_wallet_app/util/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';

class VisaCardDesign extends StatelessWidget {
  const VisaCardDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 170,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              AppColors.purple,
              AppColors.pink,
              // AppColors.yellow,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
      child: RotatedBox(
        quarterTurns: 3,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              StringConstants.userName,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 10,
                letterSpacing: 1,
                fontWeight: FontWeight.w300,
              ),
            ),
            verticalSpace(15),
            Row(
              children: [
                const Text(
                  '**** **** ****',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 11,
                    letterSpacing: 2,
                  ),
                ),
                horizontalSpace(6),
                const Text(
                  '9877',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 13,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
            const Text(
              '07/25',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 8,
                letterSpacing: 2,
                fontWeight: FontWeight.w300,
              ),
            ),
            verticalSpace(30),
            Text(
              StringConstants.totalBalance,
              style: TextStyle(
                color: AppColors.white.withOpacity(0.7),
                fontSize: 9,
                letterSpacing: 2,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  StringConstants.balanceSum,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 13,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  StringConstants.visa,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 15,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
