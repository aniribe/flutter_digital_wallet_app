import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class HistoryViewModel extends BaseViewModel {
  String? selectedMonth = "August";

  void onDropDownValueChanged(String? newValue) {
    selectedMonth = newValue;
    notifyListeners();
  }
}
