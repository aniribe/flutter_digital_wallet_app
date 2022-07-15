import 'package:flutter/cupertino.dart';

class SumData extends StatelessWidget {
  final Color textColor;
  final String sum;
  final String dataType;

  const SumData({
    Key? key,
    required this.textColor,
    required this.sum,
    required this.dataType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          dataType,
          style: TextStyle(
            fontSize: 11,
            color: textColor,
          ),
        ),
        Text(
          '\$ $sum',
          style: TextStyle(
              fontSize: 15,
              color: textColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 1),
        ),
      ],
    );
  }
}
