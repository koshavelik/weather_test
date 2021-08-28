// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'router.dart' as _i4;
import 'ui/screen/current_weather/current_weather_screen.dart' as _i5;
import 'ui/screen/forecast/forecast_screen.dart' as _i6;
import 'ui/screen/tab/tab_screen.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    TabScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.TabScreen();
        }),
    CurrentWeatherRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.EmptyRouterPage();
        }),
    ForecastRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.EmptyRouterPage();
        }),
    CurrentWeatherScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.CurrentWeatherScreen();
        }),
    ForecastScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.ForecastScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: 'tab', fullMatch: true),
        _i1.RouteConfig(TabScreen.name, path: 'tab', children: [
          _i1.RouteConfig(CurrentWeatherRouter.name, path: 'today', children: [
            _i1.RouteConfig(CurrentWeatherScreen.name, path: ''),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i1.RouteConfig(ForecastRouter.name, path: 'forecast', children: [
            _i1.RouteConfig(ForecastScreen.name, path: ''),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ])
        ])
      ];
}

class TabScreen extends _i1.PageRouteInfo {
  const TabScreen({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'tab', initialChildren: children);

  static const String name = 'TabScreen';
}

class CurrentWeatherRouter extends _i1.PageRouteInfo {
  const CurrentWeatherRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'today', initialChildren: children);

  static const String name = 'CurrentWeatherRouter';
}

class ForecastRouter extends _i1.PageRouteInfo {
  const ForecastRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'forecast', initialChildren: children);

  static const String name = 'ForecastRouter';
}

class CurrentWeatherScreen extends _i1.PageRouteInfo {
  const CurrentWeatherScreen() : super(name, path: '');

  static const String name = 'CurrentWeatherScreen';
}

class ForecastScreen extends _i1.PageRouteInfo {
  const ForecastScreen() : super(name, path: '');

  static const String name = 'ForecastScreen';
}
