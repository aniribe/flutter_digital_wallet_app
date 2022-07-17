import 'package:digital_wallet_app/config/locator.dart';
import 'package:digital_wallet_app/consts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../config/app.locator.dart';
import '../../consts/string_constants.dart';
import '../../util/ui_helper.dart';
import '../../widgets/title_line.dart';
import 'components/charts_section.dart';
import 'components/credit_card_section.dart';
import 'history_viewmodel.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HistoryViewModel>.reactive(
        disposeViewModel: false,
        initialiseSpecialViewModelsOnce: true,
        viewModelBuilder: () => locator<HistoryViewModel>(),
        builder: (context, model, child) => Scaffold(
              backgroundColor: AppColors.black,
              body: SafeArea(
                child: Column(
                  children: [
                    const TitleLine(
                      title: StringConstants.history,
                      icon: Icons.more_vert,
                    ),
                    CreditCardSection(
                      selectedMonth: model.selectedMonth as String,
                      onChanged: (String? value) =>
                          model.onDropDownValueChanged(value),
                    ),
                    verticalSpace(15),
                    ChartsSections(
                        selectedMonth: model.selectedMonth as String),
                    verticalSpace(35),
                  ],
                ),
              ),
            ));
  }
}
