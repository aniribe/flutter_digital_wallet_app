import 'package:flutter/material.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/string_constants.dart';
import '../../../util/ui_helper.dart';
import '../../../widgets/buttons/button_with_icon.dart';

class SendMoneySection extends StatelessWidget {
  const SendMoneySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: AppColors.purple,
                padding: const EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text(StringConstants.sendMoney),
            ),
          ),
          horizontalSpace(15),
          const ButtonWithIcon(
            iconSize: 25,
            icon: Icons.more_vert,
            borderRadius: 9,
            size: 40,
          ),
        ],
      ),
    );
  }
}
