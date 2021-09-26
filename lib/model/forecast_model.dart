import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:weather_test/model/city_model.dart';
import 'package:weather_test/model/forecast_item_model.dart';
import 'package:weather_test/utils/serializers.dart';

part 'forecast_model.g.dart';

abstract class ForecastModel implements Built<ForecastModel, ForecastModelBuilder> {
  BuiltList<ForecastItemModel> get list;

  CityModel get city;

  Map<String, List<ForecastItemModel>> get listGrouped {
    final Map<String, List<ForecastItemModel>> grouped = {};

    groupBy(
      list,
      (ForecastItemModel forecastItem) => forecastItem.dayOfWeek,
    ).forEach((key, value) {
      value.sort((b, a) => a.dtTxt.compareTo(b.dtTxt));
      grouped[key] = value;
    });

    return grouped;
  }

  ForecastModel._();

  factory ForecastModel([void Function(ForecastModelBuilder) updates]) = _$ForecastModel;

  String toJson() {
    return json.encode(serializers.serializeWith(ForecastModel.serializer, this));
  }

  static ForecastModel? fromJson(String jsonString) {
    return serializers.deserializeWith(ForecastModel.serializer, json.decode(jsonString));
  }

  static Serializer<ForecastModel> get serializer => _$forecastModelSerializer;
}
