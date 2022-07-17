import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomePageViewModel extends IndexTrackingViewModel {
  double leftForAnimation = 30;
  int currentIndex = 0;

  void onButtonPressed(BuildContext context, double left) {
    print('PRESSED');
    leftForAnimation = left;
    notifyListeners();
  }
}
