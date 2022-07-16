import 'package:digital_wallet_app/consts/string_constants.dart';
import 'package:digital_wallet_app/util/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../consts/app_colors.dart';
import 'components/credit_card_section.dart';
import 'components/expense_graph.dart';
import 'components/progress_chart.dart';
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
                      selectedMonth: model.selectedMonth as String,
                      onChanged: (String? value) =>
                          model.onDropDownValueChanged(value),
                    ),
                    verticalSpace(15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: SizedBox(
                        height: 420,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              StringConstants.analytics,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                              ),
                            ),
                            verticalSpace(7),
                            ExpenseGraphDesign(
                                month: model.selectedMonth as String),
                            verticalSpace(15),
                            const CircleProgressChartSection(),
                            verticalSpace(35),
                            Stack(
                              children: [
                                AnimatedPositioned(
                                  top: 40,
                                  left: model.leftForAnimation,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn,
                                  child: Container(
                                    decoration: const BoxDecoration(boxShadow: [
                                      BoxShadow(
                                        blurRadius: 25,
                                        spreadRadius: 7,
                                        color: AppColors.purple,
                                      ),
                                    ]),
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: AppColors.white.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 2,
                                      color: AppColors.pink.withOpacity(0.3),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        onPressed: () =>
                                            model.onButtonPressed(context, 28),
                                        icon: const Icon(
                                          Icons.bar_chart,
                                          color: AppColors.grey500,
                                          size: 32,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () =>
                                            model.onButtonPressed(context, 115),
                                        icon: const Icon(
                                          Icons.add_card,
                                          color: AppColors.grey500,
                                          size: 32,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () =>
                                            model.onButtonPressed(context, 200),
                                        icon: const Icon(
                                          Icons.notifications,
                                          color: AppColors.grey500,
                                          size: 32,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () =>
                                            model.onButtonPressed(context, 290),
                                        icon: const Icon(
                                          Icons.settings,
                                          color: AppColors.grey500,
                                          size: 32,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
