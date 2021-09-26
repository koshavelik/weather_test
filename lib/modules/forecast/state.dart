import 'package:get/get.dart';
import 'package:weather_test/model/forecast_model.dart';

class ForecastState {
  final loading = true.obs;
  final forecast = Rx<ForecastModel?>(null);
  final errors = <String>[].obs;

  ForecastState();
}
