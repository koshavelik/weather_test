import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_test/utils/serializers.dart';

part 'sys_model.g.dart';

abstract class SysModel implements Built<SysModel, SysModelBuilder> {
  int get type;

  int get id;

  double? get message;

  String get country;

  int get sunrise;

  int get sunset;

  SysModel._();

  factory SysModel([void Function(SysModelBuilder) updates]) = _$SysModel;

  String toJson() {
    return json.encode(serializers.serializeWith(SysModel.serializer, this));
  }

  static SysModel? fromJson(String jsonString) {
    return serializers.deserializeWith(SysModel.serializer, json.decode(jsonString));
  }

  static Serializer<SysModel> get serializer => _$sysModelSerializer;
}
