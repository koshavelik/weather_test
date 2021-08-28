import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_test/utils/serializers.dart';

part 'wind_model.g.dart';

abstract class WindModel implements Built<WindModel, WindModelBuilder> {
  double get speed;

  int get deg;

  String get speedKmPerH => (speed / 1000 * 3600).toStringAsFixed(1);

  String get direction {
    const directions = ['N','NNE','NE','ENE','E','ESE', 'SE', 'SSE','S','SSW','SW','WSW','W','WNW','NW','NNW'];
    final directionIndex = (deg/22.5 + 0.5).round() - 1;

    return directions[directionIndex];
  }

  WindModel._();

  factory WindModel([void Function(WindModelBuilder) updates]) = _$WindModel;

  String toJson() {
    return json.encode(serializers.serializeWith(WindModel.serializer, this));
  }

  static WindModel? fromJson(String jsonString) {
    return serializers.deserializeWith(WindModel.serializer, json.decode(jsonString));
  }

  static Serializer<WindModel> get serializer => _$windModelSerializer;
}
