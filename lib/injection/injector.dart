import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';
import 'package:location/location.dart';
import 'package:weather_test/api/interceptors/auth_interceptor.dart';
import 'package:weather_test/api/weather_api.dart';
import 'package:weather_test/bloc/forecast/forecast_bloc.dart';
import 'package:weather_test/bloc/today/today_bloc.dart';
import 'package:weather_test/repository/geolocation_repository.dart';
import 'package:weather_test/repository/weather_repository.dart';
import 'package:weather_test/utils/constants.dart';

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
    _configureNetworkModule();
    _configureInterceptors();
    _registerInterceptors();
    _configureBlocProviders();
    _configureThirdPartLibraries();
    _configureRepositoryProviders();
    _configureApiProviders();
  }

  /// Register Network modules
  void _configureNetworkModule() {
    container.registerSingleton(
      (c) => Dio(
        BaseOptions(
          baseUrl: Constants.WEATHER_API_URL,
          connectTimeout: 50000,
          receiveTimeout: 30000,
        ),
      ),
    );
  }

  void _registerInterceptors() {
    final Dio dio = container.resolve<Dio>();
    dio.interceptors.add(container.resolve<AuthInterceptor>());
  }

  /// Register Interceptors
  @Register.singleton(AuthInterceptor)
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
}
