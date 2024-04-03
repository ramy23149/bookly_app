import 'package:flutter/material.dart';

class AppNotifier extends ChangeNotifier {
  ThemeData? _themeData;
  Locale? _locale;
  AppNotifier(this._themeData, this._locale);

  Locale get getLocale => _locale!;

  setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  ThemeData get getTheme => _themeData!;

  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }
}
