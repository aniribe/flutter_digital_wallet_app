import 'package:digital_wallet_app/views/cards/components/subtitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/string_constants.dart';
import '../../../util/ui_helper.dart';
import '../../../widgets/transaction_item.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          color: AppColors.greyPurple.withOpacity(0.35),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              const Subtitle(),
              verticalSpace(15),
              const TransactionItem(
                name: StringConstants.dribbble,
                date: '10.08.2021',
                icon: FontAwesomeIcons.dribbble,
                sum: '- \$60.00',
              ),
              verticalSpace(15),
              const TransactionItem(
                name: StringConstants.spotify,
                date: '07.08.2021',
                icon: FontAwesomeIcons.spotify,
                sum: '- \$120.00',
              ),
              verticalSpace(15),
              const TransactionItem(
                name: StringConstants.spotify,
                date: '05.08.2021',
                icon: FontAwesomeIcons.spotify,
                sum: '- \$20.00',
              ),
              verticalSpace(15),
              const TransactionItem(
                name: StringConstants.apple,
                date: '04.08.2021',
                icon: FontAwesomeIcons.apple,
                sum: '- \$70.00',
              ),
              verticalSpace(15),
              const TransactionItem(
                name: StringConstants.google,
                date: '02.08.2021',
                icon: FontAwesomeIcons.google,
                sum: '- \$170.00',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
