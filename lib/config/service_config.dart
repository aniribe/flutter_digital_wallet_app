import 'package:injectable/injectable.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:stacked_services/stacked_services.dart';

@module
abstract class ServicesConfig {
  @lazySingleton
  NavigationService get navigationService;

  @lazySingleton
  DialogService get dialogService;
}
