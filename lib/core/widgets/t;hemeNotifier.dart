import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData? _themeData;

  ThemeNotifier(this._themeData);


  ThemeData get getTheme => _themeData!;

  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }
}
