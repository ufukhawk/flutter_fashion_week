import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app_localization.dart';

class AppLocalizationsDelegate
    extends LocalizationsDelegate<ApplicationLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en'].contains(locale.languageCode);
  /*bool isSupported(Locale locale) =>
      true; //['ar', 'en'].contains(locale.languageCode);*/

  @override
  Future<ApplicationLocalizations> load(Locale locale) async {
    ApplicationLocalizations localizations =
        new ApplicationLocalizations(Locale("en", "US"));
    await localizations.load();
    if (kDebugMode) print("Load ${locale.languageCode}");
    return localizations;
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
