import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';
import 'package:location/location.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:weather_test/api/interceptors/auth_interceptor.dart';
import 'package:weather_test/api/interceptors/logger_interceptor.dart';
import 'package:weather_test/api/weather_api.dart';
import 'package:weather_test/bloc/forecast/forecast_bloc.dart';
import 'package:weather_test/bloc/today/today_bloc.dart';
import 'package:weather_test/repository/geolocation_repository.dart';
import 'package:weather_test/repository/weather_repository.dart';
import 'package:weather_test/utils/constants.dart';
import 'package:weather_test/utils/custom_pretty_printer.dart';
import 'package:weather_test/utils/error_handler.dart';

part 'injector.g.dart';

abstract class Injector {
  static late KiwiContainer container;
  static final resolve = container.resolve;

  static Future<bool> setup() async {
    container = KiwiContainer();
    _$Injector()._configure();

    return true;
  }

  void _configure() {
    _configureLogger();
    _configureNetworkModule();
    _configureInterceptors();
    _registerInterceptors();
    _configureBlocProviders();
    _configureThirdPartLibraries();
    _configureRepositoryProviders();
    _configureApiProviders();
    _configureUtils();
  }

  void _configureLogger() {
    container.registerSingleton(
      (container) => Logger(
        printer: CustomPrettyPrinter(
          colors: true,
          methodCount: 0,
          printEmojis: false,
          lineLength: 200,
        ),
        level: kDebugMode ? Level.verbose : Level.nothing,
      ),
    );
  }

  void _configureNetworkModule() {
    container.registerSingleton(
      (container) => Dio(
        BaseOptions(
          baseUrl: Settings.WEATHER_API_URL,
          connectTimeout: 50000,
          receiveTimeout: 30000,
        ),
      ),
    );
  }

  void _registerInterceptors() {
    final Dio dio = container.resolve<Dio>();
    dio.interceptors.add(container.resolve<AuthInterceptor>());
    dio.interceptors.add(container.resolve<LoggerInterceptor>());
  }

  /// Register Interceptors
  @Register.singleton(AuthInterceptor)
  @Register.singleton(LoggerInterceptor)
  void _configureInterceptors();

  /// Register Bloc dependencies
  @Register.singleton(TodayBloc)
  @Register.singleton(ForecastBloc)
  void _configureBlocProviders();

  /// Register repositories dependencies
  @Register.singleton(GeolocationRepository)
  @Register.singleton(WeatherRepository)
  void _configureRepositoryProviders();

  /// Register API dependencies
  @Register.factory(WeatherApi)
  void _configureApiProviders();

  /// Register third part libraries
  @Register.factory(Location)
  void _configureThirdPartLibraries();

  /// Register utils
  @Register.singleton(ErrorHandler)
  void _configureUtils();
}
