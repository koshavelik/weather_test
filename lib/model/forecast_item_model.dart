import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:intl/intl.dart';
import 'package:weather_test/model/clouds_model.dart';
import 'package:weather_test/model/day_part_model.dart';
import 'package:weather_test/model/precipitation_model.dart';
import 'package:weather_test/model/weather_main_model.dart';
import 'package:weather_test/model/weather_model.dart';
import 'package:weather_test/model/wind_model.dart';
import 'package:weather_test/utils/serializers.dart';

part 'forecast_item_model.g.dart';

abstract class ForecastItemModel implements Built<ForecastItemModel, ForecastItemModelBuilder> {
  int get dt;

  WeatherMainModel get main;

  BuiltList<WeatherModel> get weather;

  CloudsModel get clouds;

  WindModel get wind;

  int get visibility;

  double get pop;

  PrecipitationModel? get rain;

  PrecipitationModel? get snow;

  String get dtTxt;

  DayPartModel get sys;

  String get dayOfWeek {
    final DateTime date = DateTime.parse(dtTxt);

    return DateFormat('EEEE').format(date);
  }

  String get time {
    final DateTime date = DateTime.parse(dtTxt);

    return DateFormat.Hm().format(date);
  }

  ForecastItemModel._();

  factory ForecastItemModel([void Function(ForecastItemModelBuilder) updates]) = _$ForecastItemModel;

  String toJson() {
    return json.encode(serializers.serializeWith(ForecastItemModel.serializer, this));
  }

  static ForecastItemModel? fromJson(String jsonString) {
    return serializers.deserializeWith(ForecastItemModel.serializer, json.decode(jsonString));
  }

  static Serializer<ForecastItemModel> get serializer => _$forecastItemModelSerializer;
}
