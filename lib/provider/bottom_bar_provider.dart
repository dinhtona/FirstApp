import 'package:FirstApp/Screens/main_screen.dart';
import 'package:FirstApp/Screens/start_screen.dart';
import 'package:FirstApp/models/page_model.dart';
import 'package:flutter/material.dart';

class BottomBarProvider extends ChangeNotifier {
  int _drawerItemIndex = -1;
  int get drawerItemIndex => _drawerItemIndex;
  set drawerItemIndex(int index) {
    _drawerItemIndex = index;
    notifyListeners();
  }

  // IconData _iconTitleBar = Icons.book;
  // IconData get iconTitleBar => _iconTitleBar;
  // set iconTitleBar(IconData icon) {
  //   _iconTitleBar = icon;
  //   notifyListeners();
  // }

  PageModel _page;
  PageModel get page {
    if (_page == null) {
      PageModel page = new PageModel();
      page.title = "Dashboard";
      page.iconData = Icons.dashboard;
      page.page = MainScreen();
      _page = page;
    }
    return _page;
  }

  set page(PageModel page) {
    _page = page;
    notifyListeners();
  }
}
