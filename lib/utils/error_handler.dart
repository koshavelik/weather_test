import 'package:dio/dio.dart';
import 'package:weather_test/generated/locale_keys.g.dart';


class ErrorHandler {

  const ErrorHandler();

  String getErrorMessage(dynamic exception) {
    if (exception is DioError) {
      switch (exception.type) {
        case DioErrorType.cancel:
          return LocaleKeys.requestCancelled;
        case DioErrorType.connectTimeout:
          return LocaleKeys.connectionTimeout;
        case DioErrorType.other:
          return LocaleKeys.noInternet;
        case DioErrorType.receiveTimeout:
          return LocaleKeys.receiveTimeout;
        case DioErrorType.response:
          return LocaleKeys.invalidStatusCode;
        case DioErrorType.sendTimeout:
          return LocaleKeys.sendTimeout;
      }
    }

    return LocaleKeys.somethingWentWrong;
  }
}
