import 'package:flutter/material.dart';
import 'package:FirstApp/Theme/theme_values.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData = blueTheme;

  ThemeNotifier(this._themeData);

  Color _primaryColor = Colors.blue;
  Color _primaryDarkColor = Colors.blue;
  Color _accentColor = Colors.pink;

  getTheme() => _themeData;
  getPrimaryColor() => _primaryColor;
  getPrimaryDarkColor() => _primaryDarkColor;
  getAccentColor() => _accentColor;

  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    _primaryColor = themeData.primaryColor;
    _primaryDarkColor = themeData.primaryColorDark;
    _accentColor = themeData.accentColor;
    notifyListeners();
  }
}
