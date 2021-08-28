import 'package:dio/dio.dart';
import 'package:weather_test/model/current_weather_model.dart';
import 'package:weather_test/extensions/future_extensions.dart';
import 'package:weather_test/model/forecast_model.dart';
import 'package:weather_test/utils/constants.dart';

class WeatherApi {
  static const CURRENT_WEATHER = '/weather';
  static const FORECAST = '/forecast';

  final Dio _dio;

  WeatherApi(this._dio);

  Future<CurrentWeatherModel> getCurrentWeather(double lat, double lon) async {
    return _dio.get<String>(
      Uri.encodeFull(CURRENT_WEATHER),
      queryParameters: {
        'lat': lat,
        'lon': lon,
        'units': Units.METRIC
      },
    ).decodeJson<CurrentWeatherModel>();
  }

  Future<ForecastModel> getForecast(double lat, double lon) async {
    return _dio.get<String>(
      Uri.encodeFull(FORECAST),
      queryParameters: {
        'lat': lat,
        'lon': lon,
        'units': Units.METRIC
      },
    ).decodeJson<ForecastModel>();
  }
}
