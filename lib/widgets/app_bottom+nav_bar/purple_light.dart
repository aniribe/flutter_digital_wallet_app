import 'package:flutter/cupertino.dart';
import '../../consts/app_colors.dart';

class PurpleLight extends StatelessWidget {
  const PurpleLight({
    Key? key,
    required this.leftForAnimation,
  }) : super(key: key);

  final double leftForAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: 30,
      left: leftForAnimation,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 25,
            spreadRadius: 7,
            color: AppColors.purple.withOpacity(0.8),
          ),
        ]),
        height: 50,
        width: 50,
      ),
    );
  }
}
