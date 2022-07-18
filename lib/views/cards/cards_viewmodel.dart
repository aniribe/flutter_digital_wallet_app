import 'package:stacked/stacked.dart';

class CardsViewModel extends BaseViewModel {
  int currentCard = 0;

  void onPageChanged(int index) {
    currentCard = index;
    notifyListeners();
  }
}
