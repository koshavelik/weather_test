import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_test/model/coord_model.dart';
import 'package:weather_test/utils/serializers.dart';

part 'city_model.g.dart';

abstract class CityModel implements Built<CityModel, CityModelBuilder> {
  int get id;

  String get name;

  CoordModel get coord;

  String get country;

  int get sunrise;

  int get sunset;

  int get timezone;

  CityModel._();

  factory CityModel([void Function(CityModelBuilder) updates]) = _$CityModel;

  String toJson() {
    return json.encode(serializers.serializeWith(CityModel.serializer, this));
  }

  static CityModel? fromJson(String jsonString) {
    return serializers.deserializeWith(CityModel.serializer, json.decode(jsonString));
  }

  static Serializer<CityModel> get serializer => _$cityModelSerializer;
}
