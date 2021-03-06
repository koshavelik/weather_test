// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  @override
  void _configureInterceptors() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerSingleton((c) => AuthInterceptor())
      ..registerSingleton((c) => LoggerInterceptor(c<Logger>()));
  }

  @override
  void _configureBlocProviders() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerSingleton((c) => TodayBloc(c<GeolocationRepository>(),
          c<WeatherRepository>(), c<ErrorHandler>()))
      ..registerSingleton((c) => ForecastBloc(c<GeolocationRepository>(),
          c<WeatherRepository>(), c<ErrorHandler>()));
  }

  @override
  void _configureRepositoryProviders() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerSingleton((c) => GeolocationRepository(c<Location>()))
      ..registerSingleton((c) => WeatherRepository(c<WeatherApi>()));
  }

  @override
  void _configureApiProviders() {
    final KiwiContainer container = KiwiContainer();
    container..registerFactory((c) => WeatherApi(c<Dio>()));
  }

  @override
  void _configureThirdPartLibraries() {
    final KiwiContainer container = KiwiContainer();
    container..registerFactory((c) => Location());
  }

  @override
  void _configureUtils() {
    final KiwiContainer container = KiwiContainer();
    container..registerSingleton((c) => ErrorHandler());
  }
}
