import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_test/bloc/forecast/forecast_state.dart';
import 'package:weather_test/model/coord_model.dart';
import 'package:weather_test/model/forecast_model.dart';
import 'package:weather_test/repository/geolocation_repository.dart';
import 'package:weather_test/repository/weather_repository.dart';
import 'package:weather_test/utils/error_handler.dart';

export 'forecast_state.dart';

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  final GeolocationRepository _locationRepository;
  final WeatherRepository _weatherRepository;
  final ErrorHandler _errorHandler;

  ForecastBloc(
    this._locationRepository,
    this._weatherRepository,
    this._errorHandler,
  ) : super(ForecastState());

  @override
  Stream<ForecastState> mapEventToState(
    ForecastEvent event,
  ) async* {
    if (event is GetForecast) {
      yield* _getForecast();
    }
  }

  Stream<ForecastState> _getForecast() async* {
    try {
      final CoordModel? locationData = await _locationRepository.getLocation();

      if (locationData != null) {
        final ForecastModel? forecast = await _weatherRepository.getForecast(
          locationData.lat,
          locationData.lon,
        );

        yield state.rebuild((b) => b
          ..forecast = forecast?.toBuilder()
          ..isLoading = false);
      }
    } on Exception catch (e) {
      yield state.rebuild((b) => b
        ..errors.add(_errorHandler.getErrorMessage(e))
        ..isLoading = false);
    }
  }
}
