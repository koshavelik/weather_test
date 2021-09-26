import 'package:get/get.dart';
import 'package:weather_test/model/coord_model.dart';
import 'package:weather_test/model/forecast_model.dart';
import 'package:weather_test/modules/forecast/state.dart';
import 'package:weather_test/repository/geolocation_repository.dart';
import 'package:weather_test/repository/weather_repository.dart';
import 'package:weather_test/utils/error_handler.dart';

class ForecastLogic extends GetxController {
  final ForecastState _state = ForecastState();

  ForecastState get state => _state;

  final GeolocationRepository _locationRepository;
  final WeatherRepository _weatherRepository;
  final ErrorHandler _errorHandler;

  ForecastLogic(this._locationRepository, this._weatherRepository, this._errorHandler);

  @override
  void onInit() {
    super.onInit();
    _getForecast();
  }

  Future<void> _getForecast() async {
    try {
      final CoordModel? locationData = await _locationRepository.getLocation();

      if (locationData != null) {
        final ForecastModel? forecast = await _weatherRepository.getForecast(
          locationData.lat,
          locationData.lon,
        );

        if (forecast != null) {
          state.loading.value = false;
          state.forecast.value = forecast;
        }
      }
    } on Exception catch (e) {
      state.loading.value = false;
      state.errors.add(_errorHandler.getErrorMessage(e));
    }
  }
}
