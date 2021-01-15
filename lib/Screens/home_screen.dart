import 'package:FirstApp/Theme/theme_notifier.dart';
import 'package:FirstApp/Screens/book_screen.dart';
import 'package:FirstApp/Screens/drawer_menu.dart';
import 'package:FirstApp/Screens/page_change_theme.dart';
import 'package:FirstApp/Screens/setting_screen.dart';
import 'package:FirstApp/Screens/start_screen.dart';
import 'package:FirstApp/Screens/main_screen.dart';
import 'package:FirstApp/provider/bottom_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:FirstApp/models/page_model.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final BottomBarProvider _bottomBarProvider =
        Provider.of<BottomBarProvider>(context);
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);

    // PageModel pageDefault = new PageModel();
    // pageDefault.iconData = Icons.book;
    // pageDefault.page = BookScreen();
    // pageDefault.title = "Book page";
    // _bottomBarProvider.page = pageDefault;

    void handleClick(String value) {
      switch (value) {
        case 'Logout':
          break;
        case 'Settings':
          break;
      }
    }

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 2.0,
        title: Row(
          children: [
            Icon(_bottomBarProvider.page.iconData),
            SizedBox(
              width: 5.0,
            ),
            Text(_bottomBarProvider.page.title),
          ],
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: handleClick,
            // color: Colors.grey[600],
            itemBuilder: (BuildContext context) {
              return {'Cài đặt', 'Đăng xuất'}.map((String choice) {
                return PopupMenuItem<String>(
                    value: choice,
                    child: Row(
                      children: [
                        Icon(
                            choice == "Cài đặt" ? Icons.settings : Icons.logout,
                            color: Colors.blue[800]),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          choice,
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ));
              }).toList();
            },
          ),
        ],
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark
            .copyWith(statusBarColor: Theme.of(context).primaryColor),
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            return ScaleTransition(
              child: child,
              scale: animation,
            );
          },
          child: _bottomBarProvider.page.page,
        ),
      ),
      // body: StartScreen(),
      //body: _bottomBarProvider.page.page,
      drawer: DrawerMenuMain(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: themeNotifier.getAccentColor(),
        heroTag: "btn2",
        child: Icon(
          Icons.home,
          color: Colors.white,
        ),
        onPressed: () {
          PageModel pageHome = new PageModel();
          pageHome.title = "Dashboard";
          pageHome.iconData = Icons.dashboard;
          pageHome.page = MainScreen();
          _bottomBarProvider.page = pageHome;
        },
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          // backgroundColor: themeNotifier.getPrimaryColor(),
          backgroundColor: Colors.transparent,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.yellow.shade500,
          // showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "Book",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Star",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.style),
              label: "Giao diện",
            ),
          ],
          onTap: (index) {
            setState(() {
              _index = index;
            });
            PageModel pageSelected = new PageModel();
            switch (index) {
              case 0:
                pageSelected.title = "Book page";
                pageSelected.iconData = Icons.book;
                pageSelected.page = BookScreen();
                _bottomBarProvider.page = pageSelected;
                _bottomBarProvider.drawerItemIndex = -1;
                break;
              case 1:
                pageSelected.title = "Setting page";
                pageSelected.iconData = Icons.settings;
                pageSelected.page = SettingScreen();
                _bottomBarProvider.page = pageSelected;
                _bottomBarProvider.drawerItemIndex = -1;
                break;

              case 3:
                pageSelected.title = "Star page";
                pageSelected.iconData = Icons.star;
                pageSelected.page = StartScreen();
                _bottomBarProvider.page = pageSelected;
                _bottomBarProvider.drawerItemIndex = -1;
                break;

              case 4:
                pageSelected.title = "Giao diện";
                pageSelected.iconData = Icons.style;
                pageSelected.page = ChangeThemePage();
                _bottomBarProvider.page = pageSelected;
                _bottomBarProvider.drawerItemIndex = 4;
                break;
            }
          },
        ),
      ),
    );
  }
}
