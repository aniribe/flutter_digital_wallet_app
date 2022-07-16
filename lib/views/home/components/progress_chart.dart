import 'package:digital_wallet_app/consts/app_colors.dart';
import 'package:digital_wallet_app/util/ui_helper.dart';
import 'package:flutter/material.dart';
import '../../../data/data.dart';
import '../../../model/percentage.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircleProgressChartSection extends StatelessWidget {
  const CircleProgressChartSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Percentage> percentage = percentageList;

    return Container(
      height: 110,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: percentage.length,
          itemBuilder: (context, index) {
            final percentList = percentage[index];
            return Container(
              margin: const EdgeInsets.only(right: 10),
              width: 85,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.12),
              ),
              child: Column(
                children: [
                  verticalSpace(6),
                  CircularPercentIndicator(
                    radius: 25,
                    lineWidth: 5,
                    percent: percentList.percent / 100,
                    backgroundColor: AppColors.yellow.withOpacity(0.5),
                    progressColor: AppColors.purple,
                    backgroundWidth: 1,
                    center: Text(
                      "${percentList.percent}%",
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  verticalSpace(4),
                  Text(
                    percentList.categories,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 11,
                    ),
                  ),
                  verticalSpace(4),
                  Text(
                    "\$${percentList.price}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
