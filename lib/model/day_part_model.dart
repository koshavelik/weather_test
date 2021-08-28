import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_test/utils/serializers.dart';

part 'day_part_model.g.dart';

abstract class DayPartModel implements Built<DayPartModel, DayPartModelBuilder> {
  String get pod;

  DayPartModel._();
  factory DayPartModel([void Function(DayPartModelBuilder) updates]) = _$DayPartModel;

  String toJson() {
    return json.encode(serializers.serializeWith(DayPartModel.serializer, this));
  }

  static DayPartModel? fromJson(String jsonString) {
    return serializers.deserializeWith(DayPartModel.serializer, json.decode(jsonString));
  }

  static Serializer<DayPartModel> get serializer => _$dayPartModelSerializer;
}