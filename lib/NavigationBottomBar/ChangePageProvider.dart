import 'package:FirstApp/Models/MyPage.dart';
import 'package:FirstApp/NavigationBottomBar/MetaData.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChangePageProvider extends ChangeNotifier {
  List<MyPage> lstItem = listPageDrawer + listPage;
  int _index = 0;

  void changePage(int index) {
    _index = index;
    notifyListeners();
  }

  int get getIndex => _index;
  String get getTitle => lstItem.firstWhere((p) => p.index == _index).title;

  MyPage getCurrentPage(int index) {
    return lstItem.firstWhere((page) => page.index == index);
  }

  void setCurrentPage(int index) {
    lstItem.firstWhere((page) => page.index == index);
    notifyListeners();
  }
}
