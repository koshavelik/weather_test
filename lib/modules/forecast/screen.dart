import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_test/generated/locale_keys.g.dart';
import 'package:weather_test/injection/injector.dart';
import 'package:weather_test/model/forecast_item_model.dart';
import 'package:weather_test/modules/forecast/logic.dart';
import 'package:weather_test/modules/forecast/widdgets/forecast_item.dart';
import 'package:weather_test/widget/error_message.dart';
import 'package:weather_test/widget/loading.dart';


class ForecastScreen extends StatelessWidget {
  final logic = Get.put(Injector.resolve<ForecastLogic>(), permanent: true);
  final state = Get.find<ForecastLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetX<ForecastLogic>(
      init: logic,
      builder: _buildWeather(context),
    );
  }

  Widget Function(ForecastLogic) _buildWeather(BuildContext context) {
    return (_) {
      if (state.errors.isNotEmpty) {
        return ErrorMessage(errors: state.errors.toList());
      }

      if (state.loading.value || state.forecast.value == null) {
        return Loading();
      }

      return Scaffold(
        appBar: AppBar(
          title: Text(state.forecast.value!.city.name),
          centerTitle: true,
        ),
        body: ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemCount: state.forecast.value!.listGrouped.length,
          itemBuilder: _buildItem(state.forecast.value!.listGrouped),
        ),
      );
    };
  }

  Widget Function(BuildContext, int) _buildItem(Map<String, List<ForecastItemModel>> map) {
    return (BuildContext context, int index) {
      final String key = map.keys.elementAt(index);
      final listWeather = map[key]!.toList();

      String dayText = key;

      if (key == DateFormat('EEEE').format(DateTime.now())) {
        dayText = LocaleKeys.today;
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
              top: 25.0,
              right: 25.0,
            ),
            child: Text(
              dayText,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            reverse: true,
            primary: false,
            itemCount: listWeather.length,
            itemBuilder: _buildWeatherItem(listWeather),
          ),
        ],
      );
    };
  }

  Widget Function(BuildContext, int) _buildWeatherItem(List<ForecastItemModel> list) {
    return (BuildContext context, int index) {
      return ForecastItem(item: list[index]);
    };
  }
}
