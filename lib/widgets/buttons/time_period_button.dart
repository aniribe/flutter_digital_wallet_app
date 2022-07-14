import 'package:flutter/material.dart';

class TimePeriodButton extends StatelessWidget {
  final String text;
  final Color textColor;

  const TimePeriodButton({
    Key? key,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(padding: const EdgeInsets.all(3)),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
            ),
          )),
    );
  }
}
