import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_test/bloc/today/today_bloc.dart';
import 'package:weather_test/injection/injector.dart';
import 'package:weather_test/res/images.dart';
import 'package:weather_test/extensions/context_extensions.dart';
import 'package:weather_test/ui/screen/current_weather/param_item.dart';
import 'package:weather_test/ui/widget/divider_custom.dart';
import 'package:weather_test/ui/widget/loading.dart';

class CurrentWeatherScreen extends StatefulWidget {
  const CurrentWeatherScreen({Key? key}) : super(key: key);

  @override
  _CurrentWeatherScreenState createState() => _CurrentWeatherScreenState();
}

class _CurrentWeatherScreenState extends State<CurrentWeatherScreen> {
  final TodayBloc bloc = Injector.resolve<TodayBloc>();

  @override
  void initState() {
    bloc.add(GetCurrentWeather());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.today),
        centerTitle: true,
      ),
      body: BlocBuilder(
        bloc: bloc,
        builder: _buildWeather,
      ),
    );
  }

  Widget _buildWeather(BuildContext context, TodayState state) {
    if (state.isLoading || state.weather == null) {
      return Loading();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: state.weather?.weather[0].imageUrlX4 ?? '',
            width: 200.0,
            height: 200.0,
          ),
          Text('${state.weather?.name}, ${state.weather?.sys.country}'),
          SizedBox(height: 10.0),
          Text(
            '${state.weather?.main.temp.round()} | ${state.weather?.weather[0].main}',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 20.0),
          DividerCustom(short: true),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Param(
                text: state.weather?.main.humidity.toString() ?? '',
                image: Images.icon_humidity,
              ),
              Visibility(
                visible: state.weather?.rain != null,
                child: Param(
                  text: state.weather?.main.pressure.toString() ?? '',
                  image: Images.icon_pressure,
                ),
              ),
              Param(
                text: state.weather?.main.pressure.toString() ?? '',
                image: Images.icon_pressure,
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Param(
                text: '${state.weather?.wind.speedKmPerH} ${context.strings.kmPerH}',
                image: Images.icon_wind,
              ),
              Param(
                text: state.weather?.wind.direction ?? '',
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
  }
}
