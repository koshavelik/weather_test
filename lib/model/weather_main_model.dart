import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_test/utils/serializers.dart';

part 'weather_main_model.g.dart';

abstract class WeatherMainModel implements Built<WeatherMainModel, WeatherMainModelBuilder> {
  double get temp;

  double get feels_like;

  double get temp_min;

  double get temp_max;

  double get pressure;

  double get humidity;

  WeatherMainModel._();

  factory WeatherMainModel([void Function(WeatherMainModelBuilder) updates]) = _$WeatherMainModel;

  String toJson() {
    return json.encode(serializers.serializeWith(WeatherMainModel.serializer, this));
  }

  static WeatherMainModel? fromJson(String jsonString) {
    return serializers.deserializeWith(WeatherMainModel.serializer, json.decode(jsonString));
  }

  static Serializer<WeatherMainModel> get serializer => _$weatherMainModelSerializer;
}
