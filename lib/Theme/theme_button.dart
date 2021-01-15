import 'package:flutter/material.dart';
import 'package:FirstApp/Theme/theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeButton extends StatelessWidget {
  final ThemeData buttonThemeData;

  ThemeButton({this.buttonThemeData});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    Future<bool> saveLocalStore(String key, String value) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      return prefs.setString(key, value);
    }

    return RawMaterialButton(
      onPressed: () {
        themeNotifier.setTheme(buttonThemeData);
        saveLocalStore("primaryColor",
            '#${buttonThemeData.primaryColor.value.toRadixString(16)}');
        saveLocalStore("primaryColorDark",
            '#${buttonThemeData.primaryColorDark.value.toRadixString(16)}');
        saveLocalStore("accentColor",
            '#${buttonThemeData.accentColor.value.toRadixString(16)}');
        String isBrightness = "light";
        if (buttonThemeData.brightness == Brightness.dark) {
          isBrightness = "dark";
        }
        saveLocalStore("isBrightness", isBrightness);
      },
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 400),
        transitionBuilder: (Widget child, Animation<double> animation) =>
            ScaleTransition(
          child: child,
          scale: animation,
        ),
        child: _getIcon(themeNotifier),
      ),
      shape: CircleBorder(),
      elevation: 2.0,
      fillColor: buttonThemeData.primaryColor,
      padding: const EdgeInsets.all(15.0),
    );
  }

  Widget _getIcon(ThemeNotifier themeNotifier) {
    bool selected = (themeNotifier.getTheme() == buttonThemeData);

    return Container(
      key: Key((selected) ? "ON" : "OFF"),
      child: Icon(
        (selected) ? Icons.done : Icons.close,
        color: buttonThemeData.accentColor,
        size: 20.0,
      ),
    );
  }
}
