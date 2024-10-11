import 'package:flutter/material.dart';
import 'package:uiweather/theme.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isselected = false;
  bool get isselected => _isselected;
  ThemeData _themeData = Lightmode;
  // ignore: recursive_getters
  ThemeData get themeData => _themeData;
  void toggletheme() {
    if (_themeData == Lightmode) {
      _themeData = darkmode;
    } else {
      _themeData = Lightmode;
    }
    _isselected = !_isselected;
    notifyListeners();
  }
}
