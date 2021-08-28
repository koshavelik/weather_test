import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_test/utils/serializers.dart';

part 'clouds_model.g.dart';

abstract class CloudsModel implements Built<CloudsModel, CloudsModelBuilder> {
  int get all;

  CloudsModel._();
  factory CloudsModel([void Function(CloudsModelBuilder) updates]) = _$CloudsModel;

  String toJson() {
    return json.encode(serializers.serializeWith(CloudsModel.serializer, this));
  }

  static CloudsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(CloudsModel.serializer, json.decode(jsonString));
  }

  static Serializer<CloudsModel> get serializer => _$cloudsModelSerializer;
}