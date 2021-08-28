import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension Context on BuildContext {
  AppLocalizations get strings => AppLocalizations.of(this)!;
}