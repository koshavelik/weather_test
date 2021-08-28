import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_test/utils/serializers.dart';

Future<T> decodeJson<T>(String res) async {
  final result = await compute(_decode, [res, T]);

  return result as T;
}

dynamic _decode(List<dynamic> list) {
  final decoded = json.decode(list[0] as String);
  final matchedDecoder = serializers.serializerForType(list[1] as Type);

  if (matchedDecoder != null) {
    return serializers.deserializeWith(matchedDecoder, decoded);
  } else {
    return null;
  }
}

Future<BuiltList<T>> decodeJsonList<T>(String res) async {
  final BuiltList<Object>? result = await compute(_decodeList, [res, T]);

  if (result != null) {
    return result.map((i) => i as T).toBuiltList();
  }

  return BuiltList();
}

BuiltList<Object> _decodeList(List<dynamic> list) {
  final Iterable<dynamic> decoded = json.decode(list[0] as String) as Iterable<dynamic>;
  final matchedDecoder = serializers.serializerForType(list[1] as Type);

  if (matchedDecoder != null) {
    return BuiltList.from(
      decoded.map((value) => serializers.deserializeWith(matchedDecoder, value)).toList(growable: false),
    );
  } else {
    return [] as BuiltList<Object>;
  }
}
