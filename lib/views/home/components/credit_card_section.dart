import 'package:flutter/cupertino.dart';
import '../../../widgets/visa_card/visa_card.dart';
import 'expense_income_section.dart';

class CreditCardSection extends StatelessWidget {
  final String selectedValue;
  final void Function(String?)? onChanged;

  const CreditCardSection({
    Key? key,
    required this.selectedValue,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const VisaCardDesign(),
        ExpenseIncomeSection(
          selectedValue: selectedValue,
          onChanged: onChanged,
        ),
      ],
    );
  }
}