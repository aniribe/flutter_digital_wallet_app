import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomePageViewModel extends IndexTrackingViewModel {
  double leftForAnimation = 30;

  void onButtonPressed(BuildContext context, double left, int index) {
    print('PRESSED: $index');
    setIndex(index);
    leftForAnimation = left;

    notifyListeners();
  }
}
