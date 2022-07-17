import 'package:digital_wallet_app/views/home/home_page_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../views/history/history_viewmodel.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomePageView, initial: true),
    // CupertinoRoute(page: PreLoginView),
  ],
  dependencies: [
    Singleton(classType: HistoryViewModel),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
  ],
)
class AppSetup {}
