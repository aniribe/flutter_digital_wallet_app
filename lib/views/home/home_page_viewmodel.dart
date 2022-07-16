import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomePageViewModel extends BaseViewModel {
  String? selectedMonth = "August";

  double leftForAnimation = 30;

  void onDropDownValueChanged(String? newValue) {
    selectedMonth = newValue;
    notifyListeners();
  }

  void onButtonPressed(BuildContext context, double left) {
    leftForAnimation = left;
    notifyListeners();
  }
}
