import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_test/generated/locale_keys.g.dart';
import 'package:weather_test/injection/injector.dart';
import 'package:weather_test/modules/today/logic.dart';
import 'package:weather_test/modules/today/widgets/param_item.dart';
import 'package:weather_test/res/images.dart';
import 'package:weather_test/widget/divider_custom.dart';
import 'package:weather_test/widget/error_message.dart';
import 'package:weather_test/widget/loading.dart';

class TodayScreen extends StatelessWidget {
  final logic = Get.put(Injector.resolve<TodayLogic>());
  final state = Get.find<TodayLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetX<TodayLogic>(
      init: logic,
      builder: _buildWeather(context),
    );
  }

  Widget Function(TodayLogic) _buildWeather(BuildContext context) {
    return (_) {
      if (state.errors.isNotEmpty) {
        return ErrorMessage(errors: state.errors);
      }

      if (state.loading.value || state.weather.value == null) {
        return Loading();
      }

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: state.weather.value!.weather[0].imageUrlX4,
              width: 200.0,
              height: 200.0,
            ),
            Text('${state.weather.value!.name}, ${state.weather.value!.sys.country}'),
            SizedBox(height: 10.0),
            Text(
              '${state.weather.value!.main.temp.round()} | ${state.weather.value!.weather[0].main}',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 20.0),
            DividerCustom(short: true),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Param(
                  text: state.weather.value!.main.humidity.toString(),
                  image: Images.icon_humidity,
                ),
                Visibility(
                  visible: state.weather.value!.rain != null,
                  child: Param(
                    text: state.weather.value!.main.pressure.toString(),
                    image: Images.icon_pressure,
                  ),
                ),
                Param(
                  text: state.weather.value!.main.pressure.toString(),
                  image: Images.icon_pressure,
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Param(
                  text: '${state.weather.value!.wind.speedKmPerH} ${LocaleKeys.kmPerH.tr}',
                  image: Images.icon_wind,
                ),
                Param(
                  text: state.weather.value!.wind.direction,
                  image: Images.icon_compass,
                ),
              ],
            ),
            SizedBox(height: 10.0),
            DividerCustom(short: true),
            SizedBox(height: 20.0),
          ],
        ),
      );
    };
  }
}
