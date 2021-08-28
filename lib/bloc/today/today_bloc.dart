import 'dart:async';

import 'package:weather_test/bloc/base_bloc.dart';
import 'package:weather_test/bloc/today/today_state.dart';
import 'package:weather_test/model/coord_model.dart';
import 'package:weather_test/model/current_weather_model.dart';
import 'package:weather_test/repository/geolocation_repository.dart';
import 'package:weather_test/repository/weather_repository.dart';

export 'today_state.dart';

class TodayBloc extends BaseBloc<TodayEvent, TodayState> {
  final GeolocationRepository _locationRepository;
  final WeatherRepository _weatherRepository;

  TodayBloc(this._locationRepository, this._weatherRepository) : super(TodayState());

  @override
  Stream<TodayState> mapEventToState(
    TodayEvent event,
  ) async* {
    if (event is GetCurrentWeather) {
      yield* _getCurrentWeather();
    }
  }

  Stream<TodayState> _getCurrentWeather() async* {
    try {
      final CoordModel? locationData = await _locationRepository.getLocation();

      if (locationData != null) {
        final CurrentWeatherModel? weather = await _weatherRepository.getCurrentWeather(
          locationData.lat,
          locationData.lon,
        );

        yield state.rebuild((b) => b
          ..weather = weather?.toBuilder()
          ..isLoading = false);
      }
    } on Exception catch (e) {}
  }
}
