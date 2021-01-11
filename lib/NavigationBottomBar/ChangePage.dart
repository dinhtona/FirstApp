import 'package:flutter/foundation.dart';

class ChangePage with ChangeNotifier {
  int _index = 0;

  void changeIndex(int index) {
    _index = index;
    notifyListeners();
  }

  int getIndex() {
    return _index;
  }
}
