import 'package:digital_wallet_app/views/home/components/progress_chart.dart';
import 'package:flutter/cupertino.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/string_constants.dart';
import '../../../util/ui_helper.dart';
import '../../home/components/expense_graph.dart';

class ChartsSections extends StatelessWidget {
  final String selectedMonth;

  const ChartsSections({
    Key? key,
    required this.selectedMonth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: SizedBox(
        height: 340,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              StringConstants.analytics,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
            ),
            verticalSpace(7),
            ExpenseGraphDesign(month: selectedMonth),
            verticalSpace(15),
            const CircleProgressChartSection(),
          ],
        ),
      ),
    );
  }
}
