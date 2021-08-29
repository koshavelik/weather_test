import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class LoggerInterceptor extends Interceptor {
  final Logger _logger;

  LoggerInterceptor(this._logger);

  @override
  Future<void> onRequest(options, handler) async {
    final output = <String>[];
    output.add('*** Request ***');
    output.add('URI: ${options.uri}');
    output.add('Method: ${options.method}');

    final stringBuffer = StringBuffer();
    options.headers.forEach((key, v) => stringBuffer.write('\n  $key:$v'));
    output.add('Headers ->');
    output.add(stringBuffer.toString());
    stringBuffer.clear();

    if (options.data != null) {
      output.add('data:');

      if (options.data is Map || options.data is List) {
        output.add(jsonEncode(options.data));
      } else {
        output.add(options.data as String);
      }
    }

    _logger.i(output.join('\n'));

    return handler.next(options);
  }

  @override
  Future<void> onError(err, handler) async {
    final output = <String>[];

    output.add('*** DioError ***:');
    output.add('URI: ${err.requestOptions.uri}');
    output.add('$err');
    if (err.response != null) {
      _printResponse(err.response!);
    }

    _logger.e(output.join('\n'));

    return handler.next(err);
  }

  @override
  Future<void> onResponse(response, handler) async {
    _printResponse(response);

    return handler.next(response);
  }

  void _printResponse(Response response) {
    final output = <String>[];
    output.add('*** Response ***');
    output.add('URI: ${response.requestOptions.uri}');
    output.add('Status Code: ${response.statusCode}');
    output.add('Response Text:');
    output.add(response.toString());

    _logger.i(output.join('\n'));
  }
}
