import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather_test/router.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Weather Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      builder: (context, router) => router!,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      localeResolutionCallback: (locale, supportedLocales) {
        for (final supportedLocaleLanguage in supportedLocales) {
          if (supportedLocaleLanguage.languageCode == locale?.languageCode) {
            return supportedLocaleLanguage;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
