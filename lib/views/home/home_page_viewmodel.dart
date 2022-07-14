import 'package:stacked/stacked.dart';

class HomePageViewModel extends BaseViewModel {
  String? selectedValue = "August";

  void onDropDownValueChanged(String? newValue) {
    selectedValue = newValue;
    notifyListeners();
  }
}
