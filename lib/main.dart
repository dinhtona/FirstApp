// import 'package:FirstApp/Drawer/DrawerLeft.dart';
// import 'package:FirstApp/NavigationBottomBar/BottomBar2.dart';
// import 'package:FirstApp/NavigationBottomBar/ChangePageProvider.dart';
// import 'package:FirstApp/Screens/page1.dart';
// import 'package:FirstApp/Screens/page2.dart';
// import 'package:FirstApp/Screens/page3.dart';
// import 'package:FirstApp/Screens/page4.dart';
// import 'package:FirstApp/Screens/page5.dart';
// import 'package:FirstApp/Screens/page6.dart';
// import 'package:FirstApp/Screens/page7.dart';
// import 'package:FirstApp/Screens/page8.dart';
// import 'package:FirstApp/Screens/page9.dart';
// import 'package:FirstApp/Screens/page10.dart';
import 'package:FirstApp/Theme/theme_notifier.dart';
import 'package:FirstApp/Theme/theme_values.dart';
import 'package:FirstApp/route_app.dart';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
// import 'package:FirstApp/Common/Theme.dart';

// import 'TopBar/BaseAppBar.dart';
import 'provider/bottom_bar_provider.dart';

void main() {
  // var providers = MultiProvider(
  //   providers: [
  //     Provider<ChangePage>(create: (_) => ChangePage()),
  //     // Provider<SomethingElse>(create: (_) => SomethingElse()),
  //     // Provider<AnotherThing>(create: (_) => AnotherThing()),
  //   ],
  //   child: MyApp,
  // );
  runApp(
      // ChangeNotifierProvider(
      //   create: (context) => ChangePage(),
      //   child: MyApp(),
      // ),
      MyApp());
}

class MyApp extends StatelessWidget {
  // Widget _currenPage;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomBarProvider>.value(
          value: BottomBarProvider(),
        ),
        ChangeNotifierProvider(create: (_) => ThemeNotifier(blueTheme)),
      ],
      child: RouteApp(),
    );
  }
}
