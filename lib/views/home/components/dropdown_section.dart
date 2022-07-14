import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../consts/app_colors.dart';
import '../../../consts/string_constants.dart';
import '../../../data/data.dart';
import '../../../widgets/buttons/time_period_button.dart';

class DropDownSection extends StatelessWidget {
  const DropDownSection({
    Key? key,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  final String selectedValue;
  final void Function(String? p1)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            TimePeriodButton(
              textColor: AppColors.white,
              text: StringConstants.day,
            ),
            TimePeriodButton(
              textColor: AppColors.white,
              text: StringConstants.week,
            ),
            TimePeriodButton(
              textColor: AppColors.pink,
              text: StringConstants.month,
            ),
          ],
        ),
        Container(
          height: 28,
          width: 150,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: AppColors.grey900,
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButtonHideUnderline(
              child: DropdownButton(
            isExpanded: true,
            dropdownColor: AppColors.grey900,
            items: monthList.map<DropdownMenuItem<String>>((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(
                      color: value == selectedValue
                          ? AppColors.pink
                          : AppColors.grey500,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              );
            }).toList(),
            selectedItemBuilder: (BuildContext context) {
              return monthList.map<Widget>((item) {
                return DropdownMenuItem(
                  child: Text(
                    item,
                    style: const TextStyle(
                      color: AppColors.grey500,
                      fontSize: 14,
                    ),
                  ),
                  value: item,
                );
              }).toList();
            },
            onChanged: onChanged,
            value: selectedValue,
          )),
        ),
      ],
    );
  }
}
