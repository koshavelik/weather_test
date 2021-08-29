import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:weather_test/model/forecast_model.dart';

part 'forecast_state.g.dart';

abstract class ForecastState implements Built<ForecastState, ForecastStateBuilder> {
  bool get isLoading;

  ForecastModel? get forecast;

  BuiltList<String> get errors;

  ForecastState._();

  factory ForecastState([void Function(ForecastStateBuilder) updates]) = _$ForecastState;

  static void _initializeBuilder(ForecastStateBuilder b) => b..isLoading = true;
}

abstract class ForecastEvent {}

class GetForecast extends ForecastEvent {}
