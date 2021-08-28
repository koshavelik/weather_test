import 'package:dio/dio.dart';
import 'package:weather_test/utils/constants.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.queryParameters['appid'] = Constants.WEATHER_API_KEY;

    return super.onRequest(options, handler);
  }
}
