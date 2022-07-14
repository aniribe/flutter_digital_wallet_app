import 'package:digital_wallet_app/views/home/home_page_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
  MaterialRoute(page: HomePageView, initial: true),
  // CupertinoRoute(page: PreLoginView),
])
class AppSetup {}
