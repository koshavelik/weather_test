import 'package:built_value/serializer.dart';

class JsonRenamePlugin implements SerializerPlugin {
  final FullType fullType;
  final Map<String, String> mappings;
  final Map<String, String> reverseMappings = {};

  JsonRenamePlugin(this.fullType, this.mappings) {
    for (final key in mappings.keys) {
      reverseMappings[mappings[key]!] = key;
    }
  }

  @override
  Object? beforeSerialize(Object? object, FullType specifiedType) {
    return object;
  }

  @override
  Object? afterSerialize(Object? object, FullType specifiedType) {
    if (specifiedType == fullType && object is Map) {
      final Map<dynamic, dynamic> newMap = {};

      for (final key in object.keys) {
        if (mappings.containsKey(key)) {
          newMap[mappings[key]] = object[key];
        } else {
          newMap[key] = object[key];
        }
      }

      return newMap;
    } else {
      return object;
    }
  }

  @override
  Object? beforeDeserialize(Object? object, FullType specifiedType) {
    if (specifiedType == fullType && object is List) {
      for (var i = 0; i < object.length; i += 2) {
        if (reverseMappings.containsKey(object[i])) {
          object[i] = reverseMappings[object[i]];
        }
      }
    }
    return object;
  }

  @override
  Object? afterDeserialize(Object? object, FullType specifiedType) {
    return object;
  }
}
