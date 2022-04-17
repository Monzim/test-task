import 'package:flutter/material.dart';

import 'package:test_task/app/global/global.dart';

class LocaleSettings {
  static isBangla(BuildContext context) {
    Locale _l = Localizations.localeOf(context);
    if (_l == AppLocalizations.supportedLocales.first) {
      return true;
    } else {
      return false;
    }
  }
}
