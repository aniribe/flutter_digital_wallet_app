import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';
import '../../consts/string_constants.dart';
import '../../widgets/visa_card/visa_card.dart';
import 'components/expense_income_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    StringConstants.history,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.grey900,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.all(3),
                        ),
                        child: const Icon(
                          Icons.more_vert,
                          color: AppColors.grey500,
                        )),
                  )
                ],
              ),
            ),
            Row(
              children: const [
                VisaCardDesign(),
                ExpenseIncomeSection(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
