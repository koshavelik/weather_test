import 'package:get/get.dart';
import 'package:weather_test/model/coord_model.dart';
import 'package:weather_test/model/current_weather_model.dart';
import 'package:weather_test/modules/today/state.dart';
import 'package:weather_test/repository/geolocation_repository.dart';
import 'package:weather_test/repository/weather_repository.dart';
import 'package:weather_test/utils/error_handler.dart';

class TodayLogic extends GetxController {
  final TodayState _state = TodayState();

  TodayState get state => _state;

  final GeolocationRepository _locationRepository;
  final WeatherRepository _weatherRepository;
  final ErrorHandler _errorHandler;

  TodayLogic(this._locationRepository, this._weatherRepository, this._errorHandler);

  @override
  void onInit() {
    super.onInit();
    _getCurrentWeather();
  }

  Future<void> _getCurrentWeather() async {
    try {
      state.loading.value = false;
      final CoordModel? locationData = await _locationRepository.getLocation();

      if (locationData != null) {
        final CurrentWeatherModel? weather = await _weatherRepository.getCurrentWeather(
          locationData.lat,
          locationData.lon,
        );

        if (weather != null) {
          state.loading.value = false;
          state.weather.value = weather;
        }
      }
    } on Exception catch (e) {
      state.loading.value = false;
      state.errors.add(_errorHandler.getErrorMessage(e));
    }
  }
}
