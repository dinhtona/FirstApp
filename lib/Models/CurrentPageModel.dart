import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:FirstApp/Models/Page.dart';
import 'package:flutter/material.dart';

class CurrentPageModel extends ChangeNotifier {
  /// Internal, private state of the cart.
  PageModel _page;

  final List<MyPage> _items = [];

  /// An unmodifiable view of the items in the cart.
  // UnmodifiableListView<int> get items => UnmodifiableListView(_items);

  int get currentIndex {
    if (_items.length > 0)
      return _items[0].hashCode;
    else
      return 0;
  }

  /// The current total price of all items (assuming all items cost $42).
  int get totalPrice => _items.length * 42;

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void add(int item, String title) {
    _items.add(MyPage(item, title));
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void remove(int id) {
    if (_items.contains(id)) {
      _items.remove(id);
      notifyListeners();
    }
    // This call tells the widgets that are listening to this model to rebuild.
  }

  void changeIndex(int id) {
    _items.clear();
    add(id, "");
  }

  /// Removes all items from the cart.
  void removeAll() {
    _items.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}