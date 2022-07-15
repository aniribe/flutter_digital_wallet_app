import 'package:digital_wallet_app/widgets/sum_widget/sum_data.dart';
import 'package:flutter/material.dart';

class SumContainer extends StatelessWidget {
  final Color containerColor;
  final Color textColor;
  final String icon;
  final String sum;
  final String dataType;

  const SumContainer({
    Key? key,
    required this.containerColor,
    required this.textColor,
    required this.icon,
    required this.sum,
    required this.dataType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 160,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              icon,
              color: textColor,
            ),
          ),
          SumData(
            textColor: textColor,
            sum: sum,
            dataType: dataType,
          ),
        ],
      ),
    );
  }
}
