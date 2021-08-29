import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:weather_test/injection/injector.dart';
import 'package:weather_test/ui/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Injector.setup();

  runApp(EasyLocalization(
    supportedLocales: [
      Locale('en'),
    ],
    path: 'assets/translations',
    child: App(),
  ));
}
