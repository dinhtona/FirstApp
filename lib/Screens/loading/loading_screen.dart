import 'package:FirstApp/Theme/theme_notifier.dart';
import 'package:FirstApp/Theme/theme_values.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'components/body.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    Future<String> getPrimaryColor() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String value = prefs.getString("primaryColor") ??
          '#${blueTheme.primaryColor.value.toRadixString(16)}';
      return value;
    }

    Future<String> getPrimaryColorDark() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String value = prefs.getString("primaryColorDark") ??
          '#${blueTheme.primaryColorDark.value.toRadixString(16)}';
      return value;
    }

    Future<String> getBrightness() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String value = prefs.getString("isBrightness") ?? "light";
      return value;
    }

    Future<String> getAccentColor() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String value = prefs.getString("accentColor") ??
          '#${blueTheme.accentColor.value.toRadixString(16)}';
      return value;
    }

    loadThemeFromLocalStorage() async {
      String colorPrimary = await getPrimaryColor();
      String colorPrimaryDark = await getPrimaryColorDark();
      String accentColor = await getAccentColor();
      String isBrightness = await getBrightness();

      colorPrimary = "#" + colorPrimary.substring(3, 9);
      colorPrimaryDark = "#" + colorPrimaryDark.substring(3, 9);
      accentColor = "#" + accentColor.substring(3, 9);

      ThemeData _customTheme = ThemeData(
          brightness:
              isBrightness == "light" ? Brightness.light : Brightness.dark,
          primaryColor: HexColor(colorPrimary),
          primaryColorDark: HexColor(colorPrimaryDark),
          accentColor: HexColor(accentColor),
          backgroundColor: Colors.white);
      themeNotifier.setTheme(_customTheme);
    }

    loadThemeFromLocalStorage();
    return Container(
      child: Body(),
    );
  }
}
