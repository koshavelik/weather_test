import 'package:get/get.dart';
import 'package:weather_test/model/current_weather_model.dart';

class TodayState {
  final loading = true.obs;
  final weather = Rx<CurrentWeatherModel?>(null);
  final errors = <String>[].obs;

  TodayState();
}
