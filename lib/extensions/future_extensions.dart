import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:weather_test/utils/json_decoder.dart' as decoder;

extension ResponseFutureHelpers<T> on Future<Response<String>> {
  Future<R> decodeJson<R>() {
    return then((response) {
      return decoder.decodeJson<R>(response.data ?? '');
    });
  }

  Future<BuiltList<R>> decodeJsonList<R>() {
    return then((response) {
      return decoder.decodeJsonList<R>(response.data ?? '');
    });
  }

  Future<String> decodeString<R>() {
    return then((response) {
      return Future.value(response.data);
    });
  }
}

extension JsonFutureHelpers<T> on Future<String> {
  Future<R> decodeJson<R>() {
    return then((value) {
      return decoder.decodeJson(value);
    });
  }
}
