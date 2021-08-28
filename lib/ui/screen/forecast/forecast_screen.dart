import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_test/bloc/forecast/forecast_bloc.dart';
import 'package:weather_test/injection/injector.dart';
import 'package:weather_test/model/forecast_item_model.dart';
import 'package:weather_test/ui/screen/forecast/forecast_item.dart';
import 'package:weather_test/ui/widget/loading.dart';
import 'package:weather_test/extensions/context_extensions.dart';

class ForecastScreen extends StatefulWidget {
  const ForecastScreen({Key? key}) : super(key: key);

  @override
  _ForecastScreenState createState() => _ForecastScreenState();
}

class _ForecastScreenState extends State<ForecastScreen> {
  final ForecastBloc bloc = Injector.resolve<ForecastBloc>();

  @override
  void initState() {
    bloc.add(GetForecast());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: bloc,
      builder: _buildWeather,
    );
  }

  Widget _buildWeather(BuildContext context, ForecastState state) {
    if (state.isLoading || state.forecast == null) {
      return Loading();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(state.forecast?.city.name ?? ''),
        centerTitle: true,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: state.forecast?.listGrouped.length,
        itemBuilder: _buildItem(state.forecast!.listGrouped),
      ),
    );
  }

  Widget Function(BuildContext, int) _buildItem(Map<String, List<ForecastItemModel>> map) {
    return (BuildContext context, int index) {
      final String key = map.keys.elementAt(index);
      final listWeather = map[key]!.toList();

      String dayText = key;

      if (key == DateFormat('EEEE').format(DateTime.now())) {
        dayText = context.strings.today;
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
