import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:sprintf/sprintf.dart';
import 'package:weather_test/utils/constants.dart';
import 'package:weather_test/utils/serializers.dart';

part 'weather_model.g.dart';

abstract class WeatherModel implements Built<WeatherModel, WeatherModelBuilder> {
  int get id;

  String get main;

  String get description;

  String get icon;

  String get imageUrlX2 => sprintf(Constants.WEATHER_API_IMAGE_URL_x2, [icon]);

  String get imageUrlX4 => sprintf(Constants.WEATHER_API_IMAGE_URL_x4, [icon]);

  WeatherModel._();

  factory WeatherModel([void Function(WeatherModelBuilder) updates]) = _$WeatherModel;

  String toJson() {
    return json.encode(serializers.serializeWith(WeatherModel.serializer, this));
  }

  static WeatherModel? fromJson(String jsonString) {
    return serializers.deserializeWith(WeatherModel.serializer, json.decode(jsonString));
  }

  static Serializer<WeatherModel> get serializer => _$weatherModelSerializer;
}
