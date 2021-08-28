import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_test/utils/serializers.dart';

part 'coord_model.g.dart';

abstract class CoordModel implements Built<CoordModel, CoordModelBuilder> {
  double get lon;

  double get lat;

  CoordModel._();

  factory CoordModel([void Function(CoordModelBuilder) updates]) = _$CoordModel;

  String toJson() {
    return json.encode(serializers.serializeWith(CoordModel.serializer, this));
  }

  static CoordModel? fromJson(String jsonString) {
    return serializers.deserializeWith(CoordModel.serializer, json.decode(jsonString));
  }

  static Serializer<CoordModel> get serializer => _$coordModelSerializer;
}
