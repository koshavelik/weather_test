import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_test/utils/serializers.dart';

part 'precipitation_model.g.dart';

abstract class PrecipitationModel implements Built<PrecipitationModel, PrecipitationModelBuilder> {
  int? get h1;

  int? get h3;

  PrecipitationModel._();

  factory PrecipitationModel([void Function(PrecipitationModelBuilder) updates]) = _$PrecipitationModel;

  String toJson() {
    return json.encode(serializers.serializeWith(PrecipitationModel.serializer, this));
  }

  static PrecipitationModel? fromJson(String jsonString) {
    return serializers.deserializeWith(PrecipitationModel.serializer, json.decode(jsonString));
  }

  static Serializer<PrecipitationModel> get serializer => _$precipitationModelSerializer;
}
