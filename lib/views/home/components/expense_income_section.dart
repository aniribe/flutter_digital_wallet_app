import 'package:digital_wallet_app/consts/app_colors.dart';
import 'package:digital_wallet_app/consts/string_constants.dart';
import 'package:digital_wallet_app/util/ui_helper.dart';
import 'package:flutter/material.dart';
import '../../../widgets/sum_widget/sum_container.dart';

class ExpenseIncomeSection extends StatelessWidget {
  const ExpenseIncomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      height: 240,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SumContainer(
                  containerColor: AppColors.pink,
                  icon: StringConstants.arrowUpIcon,
                  textColor: AppColors.white.withOpacity(0.9),
                  dataType: StringConstants.expense,
                  sum: '4100.00',
                ),
                verticalSpace(20),
                SumContainer(
                  containerColor: AppColors.white,
                  icon: StringConstants.arrowDownIcon,
                  textColor: AppColors.pink.withOpacity(0.9),
                  dataType: StringConstants.income,
                  sum: '2100.00',
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
