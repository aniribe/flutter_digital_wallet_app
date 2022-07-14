import 'package:digital_wallet_app/views/home/components/sum_data_section.dart';
import 'package:flutter/material.dart';
import 'dropdown_section.dart';

class ExpenseIncomeSection extends StatelessWidget {
  final String selectedValue;
  final void Function(String?)? onChanged;

  const ExpenseIncomeSection({
    Key? key,
    required this.selectedValue,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      height: 260,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SumDataSection(),
            DropDownSection(selectedValue: selectedValue, onChanged: onChanged),
          ],
        ),
      ),
    ));
  }
}
