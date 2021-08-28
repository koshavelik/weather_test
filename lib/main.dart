import 'package:flutter/material.dart';
import 'package:weather_test/injection/injector.dart';
import 'package:weather_test/ui/app.dart';

Future<void> main() async {
  await Injector.setup();
  runApp(App());
}
