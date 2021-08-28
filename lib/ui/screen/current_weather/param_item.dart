import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_test/res/dimensions.dart';

class Param extends StatelessWidget {
  final String image;
  final String text;

  const Param({required this.image, required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          SvgPicture.asset(
            image,
            width: Dimensions.small_icon,
            height: Dimensions.small_icon,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(height: 5.0),
          Text(text),
        ],
      ),
    );
  }
}
