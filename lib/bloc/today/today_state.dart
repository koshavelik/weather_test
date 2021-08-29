import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:weather_test/model/current_weather_model.dart';

part 'today_state.g.dart';

abstract class TodayState implements Built<TodayState, TodayStateBuilder> {
  CurrentWeatherModel? get weather;

  bool get isLoading;

  BuiltList<String> get errors;

  TodayState._();

  factory TodayState([void Function(TodayStateBuilder) updates]) = _$TodayState;

  static void _initializeBuilder(TodayStateBuilder b) => b
    ..isLoading = true
    ..errors = ListBuilder();
}

abstract class TodayEvent {}

class GetCurrentWeather extends TodayEvent {}
