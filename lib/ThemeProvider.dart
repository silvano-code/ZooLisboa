import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = ThemeData.light();

  ThemeData get themeData => _themeData;

  void toggleTheme() {
    _themeData =
    _themeData.brightness == Brightness.light ? ThemeData.dark() : ThemeData.light();
    notifyListeners();
  }
}
