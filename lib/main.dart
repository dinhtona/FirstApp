import 'package:FirstApp/NavigationBottomBar/BottomBar2.dart';
import 'package:FirstApp/NavigationBottomBar/ChangePage.dart';
import 'package:FirstApp/Screens/page1.dart';
import 'package:FirstApp/Screens/page2.dart';
import 'package:FirstApp/Screens/page3.dart';
import 'package:FirstApp/Screens/page4.dart';
import 'package:flutter/material.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChangePage>(create: (_) => ChangePage()),
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
                Consumer<ChangePage>(
                  builder: (context, counter, child) {
                    if (counter.getIndex == 0) {
                      print(counter.getIndex);
                      return Page1();
                    } else if (counter.getIndex == 1) {
                      print(counter.getIndex);
                      return Page2();
                    } else if (counter.getIndex == 3) {
                      print(counter.getIndex);
                      return Page3();
                    } else {
                      print(counter.getIndex);
                      return Page4();
                    }
                  },
                ),
              ],
            ),
          ),
          drawer: Drawer(),
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
}
