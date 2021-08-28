import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_test/model/clouds_model.dart';
import 'package:weather_test/model/coord_model.dart';
import 'package:weather_test/model/precipitation_model.dart';
import 'package:weather_test/model/sys_model.dart';
import 'package:weather_test/model/weather_main_model.dart';
import 'package:weather_test/model/weather_model.dart';
import 'package:weather_test/model/wind_model.dart';
import 'package:weather_test/utils/serializers.dart';

part 'current_weather_model.g.dart';

abstract class CurrentWeatherModel implements Built<CurrentWeatherModel, CurrentWeatherModelBuilder> {
  CoordModel get coord;

  BuiltList<WeatherModel> get weather;

  String get base;

  WeatherMainModel get main;

  int get visibility;

  WindModel get wind;

  CloudsModel get clouds;

  int get dt;

  SysModel get sys;

  int get timezone;

  int get id;

  String get name;

  int get cod;

  PrecipitationModel? get rain;

  PrecipitationModel? get snow;

  CurrentWeatherModel._();

  factory CurrentWeatherModel([void Function(CurrentWeatherModelBuilder) updates]) = _$CurrentWeatherModel;

  String toJson() {
    return json.encode(serializers.serializeWith(CurrentWeatherModel.serializer, this));
  }

  static CurrentWeatherModel? fromJson(String jsonString) {
    return serializers.deserializeWith(CurrentWeatherModel.serializer, json.decode(jsonString));
  }

  static Serializer<CurrentWeatherModel> get serializer => _$currentWeatherModelSerializer;
}
