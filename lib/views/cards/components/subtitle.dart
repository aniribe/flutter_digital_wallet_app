import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/string_constants.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          StringConstants.transactions,
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
        Icon(
          FontAwesomeIcons.sliders,
          size: 15,
          color: AppColors.white.withOpacity(0.6),
        )
      ],
    );
  }
}
