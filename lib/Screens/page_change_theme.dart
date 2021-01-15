import 'dart:math';
import 'package:flutter/material.dart';
import 'package:FirstApp/Theme/theme_button.dart';
import 'package:FirstApp/Theme/theme_values.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';

class ChangeThemePage extends StatefulWidget {
  ChangeThemePage();

  @override
  _ChangeThemePageState createState() => _ChangeThemePageState();
}

class _ChangeThemePageState extends State<ChangeThemePage> {
  // Randomise the custom theme on the first load
  ThemeData _customTheme = ThemeData(
      primaryColor:
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
      primaryColorDark:
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
      accentColor:
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
      backgroundColor: Colors.white);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // backgroundColor: Theme.of(context).backgroundColor,
      child: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Text(
              "Giao diện hiện tại",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 4),
            _themeColorContainer(
                "Primary Color", Theme.of(context).primaryColor),
            _themeColorContainer(
                "Primary Dark Color", Theme.of(context).primaryColorDark),
            _themeColorContainer("Accent Color", Theme.of(context).accentColor),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text(
                "Chọn giao diện khác",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ThemeButton(buttonThemeData: blueTheme),
                ThemeButton(buttonThemeData: spookyTheme),
                ThemeButton(buttonThemeData: greenTheme),
                ThemeButton(buttonThemeData: pinkTheme),
              ],
            ),
            Spacer(),
            Text(
              "Tùy chọn giao diện",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: ThemeButton(buttonThemeData: _customTheme)),
                  Expanded(
                    flex: 8,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: double.infinity,
                            child: FlatButton(
                                onPressed: () => _openDialog("Primary Color",
                                    _customTheme.primaryColor, 1),
                                color: _customTheme.primaryColor,
                                child: Text("Primary Color",
                                    textAlign: TextAlign.center,
                                    style:
                                        _customTheme.primaryTextTheme.button)),
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: double.infinity,
                            child: FlatButton(
                                onPressed: () => _openDialog(
                                    "Primary Dark Color",
                                    _customTheme.primaryColorDark,
                                    2),
                                color: _customTheme.primaryColorDark,
                                child: Text("Pri-Dark Color",
                                    textAlign: TextAlign.center,
                                    style:
                                        _customTheme.primaryTextTheme.button)),
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: double.infinity,
                            child: FlatButton(
                                onPressed: () => _openDialog("Accent Color",
                                    _customTheme.accentColor, 3),
                                color: _customTheme.accentColor,
                                child: Text("Accent Color",
                                    textAlign: TextAlign.center,
                                    style:
                                        _customTheme.primaryTextTheme.button)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  // Returns simple container to display what color the theme is currently using.
  Widget _themeColorContainer(String colorName, Color color) {
    return Container(
      width: double.infinity,
      height: 50,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 8),
      color: color,
      child: Text(colorName,
          textAlign: TextAlign.center,
          style: Theme.of(context).primaryTextTheme.button),
    );
  }

  // Dialog to select colors for theme.
  void _openDialog(String title, Color currentColor, int primaryColor) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(6.0),
          title: Text(title),
          content: Container(
            height: 250,
            child: MaterialColorPicker(
              selectedColor: currentColor,
              onColorChange: (color) {
                setState(() {
                  if (primaryColor == 1) {
                    _customTheme = _customTheme.copyWith(primaryColor: color);
                  } else if (primaryColor == 2) {
                    _customTheme =
                        _customTheme.copyWith(primaryColorDark: color);
                  } else {
                    _customTheme = _customTheme.copyWith(accentColor: color);
                  }
                });
              },
              onMainColorChange: (color) {
                setState(() {
                  if (primaryColor == 1) {
                    _customTheme = _customTheme.copyWith(primaryColor: color);
                  } else if (primaryColor == 2) {
                    _customTheme =
                        _customTheme.copyWith(primaryColorDark: color);
                  } else {
                    _customTheme = _customTheme.copyWith(accentColor: color);
                  }
                });
              },
            ),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Đóng",
                style: Theme.of(context).textTheme.button,
              ),
            )
          ],
        );
      },
    );
  }
}
