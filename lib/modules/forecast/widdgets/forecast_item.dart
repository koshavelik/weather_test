import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_test/model/forecast_item_model.dart';

class ForecastItem extends StatelessWidget {
  final ForecastItemModel item;

  const ForecastItem({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: item.weather[0].imageUrlX2,
            width: 100.0,
            height: 100.0,
          ),
          Expanded(
            child: Column(children: [
              Text(item.time),
              SizedBox(
                height: 5.0,
              ),
              Text(item.weather[0].main),
            ]),
          ),
          Text(
            '${item.main.temp.round()}\u00B0C',
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}
