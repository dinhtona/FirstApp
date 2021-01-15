import 'package:FirstApp/Theme/theme_notifier.dart';
import 'package:FirstApp/UI/loading_screen.dart';
import 'package:FirstApp/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      theme: themeNotifier.getTheme(),
      initialRoute: "/",
      routes: {
        "/": (context) => LoadingScreen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
