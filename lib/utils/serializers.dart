library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather_test/model/city_model.dart';
import 'package:weather_test/model/clouds_model.dart';
import 'package:weather_test/model/coord_model.dart';
import 'package:weather_test/model/current_weather_model.dart';
import 'package:weather_test/model/day_part_model.dart';
import 'package:weather_test/model/forecast_item_model.dart';
import 'package:weather_test/model/forecast_model.dart';
import 'package:weather_test/model/precipitation_model.dart';
import 'package:weather_test/model/sys_model.dart';
import 'package:weather_test/model/weather_main_model.dart';
import 'package:weather_test/model/weather_model.dart';
import 'package:weather_test/model/wind_model.dart';
import 'package:weather_test/utils/json_rename_plagin.dart';

part 'serializers.g.dart';

@SerializersFor([
  CurrentWeatherModel,
  CoordModel,
  WeatherModel,
  WeatherMainModel,
  SysModel,
  WindModel,
  CloudsModel,
  PrecipitationModel,
  ForecastItemModel,
  ForecastModel,
  CityModel,
  DayPartModel,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addPlugin(
        JsonRenamePlugin(
          const FullType(ForecastItemModel),
          {'dtTxt': 'dt_txt'},
        ),
      )
      ..addPlugin(
        JsonRenamePlugin(
          const FullType(PrecipitationModel),
          {'h1': '1h1', 'h3': '3h'},
        ),
      ))
    .build();
