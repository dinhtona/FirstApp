import 'package:FirstApp/Drawer/DrawerLeft.dart';
import 'package:FirstApp/NavigationBottomBar/BottomBar2.dart';
import 'package:FirstApp/NavigationBottomBar/ChangePageProvider.dart';
import 'package:FirstApp/Screens/page1.dart';
import 'package:FirstApp/Screens/page2.dart';
import 'package:FirstApp/Screens/page3.dart';
import 'package:FirstApp/Screens/page4.dart';
import 'package:FirstApp/Screens/page5.dart';
import 'package:FirstApp/Screens/page6.dart';
import 'package:FirstApp/Screens/page7.dart';
import 'package:FirstApp/Screens/page8.dart';
import 'package:FirstApp/Screens/page9.dart';
import 'package:FirstApp/Screens/page10.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:FirstApp/Common/Theme.dart';

import 'TopBar/BaseAppBar.dart';

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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.pinkAccent, //or set color with: Color(0xFF0000FF)
    ));

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChangePageProvider>(
            create: (_) => ChangePageProvider()),
        // Provider<SomethingElse>(create: (_) => SomethingElse()),
        // Provider<AnotherThing>(create: (_) => AnotherThing()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false, //Remove Debug banner
        theme: appTheme,
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Consumer looks for an ancestor Provider widget
                // and retrieves its model (Counter, in this case).
                // Then it uses that model to build widgets, and will trigger
                // rebuilds if the model is updated.
                Consumer<ChangePageProvider>(
                  builder: (context, page, child) {
                    return _getPage(page.getIndex);
                  },
                ),
              ],
            ),
          ),
          drawer: DrawerLeft(),
          extendBody: true,
          appBar: BaseAppBar(),
          bottomNavigationBar: BottomBar2(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.pinkAccent[200],
            child: Icon(
              Icons.qr_code,
            ),
            // shape: CircularNotchedRectangle(),

            onPressed: () => print('Add clicked'),
            elevation: 0,
            hoverElevation: 20,
          ),
        ),
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        {
          print(index);
          return Page1();
        }
        break;

      case 1:
        {
          print(index);
          return Page2();
        }
        break;

      case 2:
        {
          print(index);
          return Page3();
        }
        break;

      case 3:
        {
          print(index);
          return Page4();
        }
        break;

      case 4:
        {
          print(index);
          return Page5();
        }
        break;

      case 5:
        {
          print(index);
          return Page6();
        }
        break;

      case 6:
        {
          print(index);
          return Page7();
        }
        break;

      case 7:
        {
          print(index);
          return Page8();
        }
        break;

      case 8:
        {
          print(index);
          return Page9();
        }
        break;

      case 9:
        {
          print(index);
          return Page10();
        }
        break;
      case 10:
        {
          print(index);
          return Page1();
        }
        break;
      default:
        {
          print('Default: ' + index.toString());
          return Page1();
        }
        break;
    }
  }
}
