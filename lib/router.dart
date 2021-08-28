import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:weather_test/ui/screen/current_weather/current_weather_screen.dart';
import 'package:weather_test/ui/screen/forecast/forecast_screen.dart';
import 'package:weather_test/ui/screen/tab/tab_screen.dart';

export 'package:auto_route/annotations.dart';
export 'package:auto_route/auto_route.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<dynamic>>[
    AdaptiveRoute(
      initial: true,
      path: Routes.mainPage,
      page: TabScreen,
      children: [
        AutoRoute(
          path: Routes.todayPage,
          name: 'CurrentWeatherRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: CurrentWeatherScreen),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: Routes.forecastPage,
          name: 'ForecastRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: ForecastScreen),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    )
  ],
)
class $AppRouter {}

class Routes {
  static const String mainPage = 'tab';
  static const String todayPage = 'today';
  static const String forecastPage = 'forecast';
}