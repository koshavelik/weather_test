import 'package:weather_test/api/weather_api.dart';
import 'package:weather_test/model/current_weather_model.dart';
import 'package:weather_test/model/forecast_model.dart';

class WeatherRepository {
  final WeatherApi _weatherApi;

  WeatherRepository(this._weatherApi);

  Future<CurrentWeatherModel?> getCurrentWeather(double? lat, double? lon) async {
    if (lat != null && lon != null) {
      return _weatherApi.getCurrentWeather(lat, lon);
    }
  }

  Future<ForecastModel?> getForecast(double? lat, double? lon) async {
    if (lat != null && lon != null) {
      return _weatherApi.getForecast(lat, lon);
    }
  }
}