import 'package:digital_wallet_app/consts/string_constants.dart';
import 'package:digital_wallet_app/util/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../consts/app_colors.dart';
import 'components/credit_card_section.dart';
import 'components/expense_graph.dart';
import 'components/title_line.dart';
import 'home_page_viewmodel.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
        viewModelBuilder: () => HomePageViewModel(),
        builder: (context, model, child) => Scaffold(
              backgroundColor: AppColors.black,
              body: SafeArea(
                child: Column(
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: TitleLine(),
                    ),
                    CreditCardSection(
                      selectedValue: model.selectedValue as String,
                      onChanged: (String? value) =>
                          model.onDropDownValueChanged(value),
                    ),
                    verticalSpace(15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22),
                      child: SizedBox(
                        height: 360,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              StringConstants.analytics,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                              ),
                            ),
                            ExpenseGraphDesign()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
