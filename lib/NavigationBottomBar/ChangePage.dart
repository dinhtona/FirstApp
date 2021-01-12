import 'package:FirstApp/Models/MyPage.dart';
import 'package:FirstApp/NavigationBottomBar/MetaData.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChangePage extends ChangeNotifier {
  int _index = 0;

  void changePage(int index) {
    _index = index;
    notifyListeners();
  }

  int get getIndex => _index;
  // String get title {

  // }

  MyPage getCurrentPage(int index) {
    return listPage.firstWhere((page) => page.index == index);
  }

  void setCurrentPage(int index) {
    listPage.firstWhere((page) => page.index == index);
    notifyListeners();
  }
}
