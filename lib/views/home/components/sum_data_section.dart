import 'package:flutter/cupertino.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/string_constants.dart';
import '../../../util/ui_helper.dart';
import '../../../widgets/sum_widget/sum_container.dart';

class SumDataSection extends StatelessWidget {
  final String expense;
  final String incomes;

  const SumDataSection({
    Key? key,
    required this.expense,
    required this.incomes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SumContainer(
          containerColor: AppColors.pink,
          icon: StringConstants.arrowUpIcon,
          textColor: AppColors.white.withOpacity(0.9),
          dataType: StringConstants.expense,
          sum: expense,
        ),
        verticalSpace(20),
        SumContainer(
          containerColor: AppColors.white,
          icon: StringConstants.arrowDownIcon,
          textColor: AppColors.pink.withOpacity(0.9),
          dataType: StringConstants.income,
          sum: incomes,
        ),
      ],
    );
  }
}
