import 'package:flutter/cupertino.dart';
import '../consts/app_colors.dart';
import '../util/ui_helper.dart';
import 'buttons/button_with_icon.dart';

class TransactionItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final String date;
  final String sum;

  const TransactionItem({
    Key? key,
    required this.icon,
    required this.name,
    required this.date,
    required this.sum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ButtonWithIcon(
              icon: icon,
              size: 45,
              borderRadius: 10,
            ),
            horizontalSpace(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: AppColors.white.withOpacity(0.6),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          sum,
          style: const TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
