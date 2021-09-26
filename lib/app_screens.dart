import 'package:get/get.dart';
import 'package:weather_test/modules/forecast/screen.dart';
import 'package:weather_test/modules/tabs/screen.dart';
import 'package:weather_test/modules/today/screen.dart';

class AppScreens {
  AppScreens._();

  static const INITIAL = Routes.mainPage;

  static final routes = [
    GetPage(
      name: Routes.mainPage,
      page: () => TabsScreen(),
    ),
    GetPage(
      name: Routes.todayPage,
      page: () => TodayScreen(),
    ),
    GetPage(
      name: Routes.forecastPage,
      page: () => ForecastScreen(),
    ),
  ];
}


abstract class Routes {
  static const String mainPage = '/tabs';
  static const String todayPage = '/today';
  static const String forecastPage = '/forecast';
}