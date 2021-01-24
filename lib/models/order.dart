import 'package:flutter/material.dart';
import 'coffee_item.dart';

class OrderModel with ChangeNotifier {
  List<Order> listOrder = [];

  List<Order> get catalog => listOrder;

  set catalog(List<Order> newCatalog) {
    assert(newCatalog != null);
    // assert(listOrder.every((id) => newCatalog.getById(id) != null),
    //     'The catalog $newCatalog does not have one of $_itemIds in it.');
    listOrder = newCatalog;
    // Notify listeners, in case the new catalog provides information
    // different from the previous one. For example, availability of an item
    // might have changed.
    notifyListeners();
  }

  /// List of items in the cart.
  // List<CoffeeItem> get items =>
  //     listOrder.map((id) => _catalog.getById(id)).toList();

  double totalPrice(int idTable) {
    double total = 0;
    listOrder.where((o) => o.idTable == idTable).first.lstItem.map((cf) {
      total += cf.unitPrice;
    });
    return total;
  }

  int totalItem(int idTable) {
    int total = 0;
    if (listOrder == null)
      total = 0;
    else {
      var x = listOrder.indexWhere((o) => o.idTable == idTable);
      if (x <= 0)
        total = 0;
      else
        listOrder[x].lstItem.map((cf) {
          total += cf.count;
        });
    }

    return total;
  }

  void updateItem(int idTable, CoffeeItem item) {
    // print('idTable: ${idTable}  item: ${item.count}');
    int i = listOrder.indexWhere((o) => o.idTable == idTable);
    if (i < 0) {
      listOrder.add(new Order(idTable, lstItem: [item]));
    } else {
      List<CoffeeItem> lstCoffee =
          listOrder.where((o) => o.idTable == idTable).first.lstItem;
      print('item.count: ${lstCoffee}');
      if (lstCoffee.indexWhere((o) => o.id == item.id) >= 0) {
        lstCoffee[lstCoffee.indexWhere((element) => element.id == item.id)] =
            item;
        listOrder.removeWhere((o) => o.idTable == idTable);
        listOrder.add(new Order(idTable, lstItem: lstCoffee));
        // listOrder.where((o) => o.idTable == idTable).first.lstItem = lstCoffee;
      } else {
        lstCoffee.add(item);
        listOrder.removeWhere((o) => o.idTable == idTable);
        listOrder.add(new Order(idTable, lstItem: lstCoffee));
      }
    }
    notifyListeners();
  }

  void removeItem(int idTable, CoffeeItem item) {
    // if (
    listOrder.where((l) => l.idTable == idTable).first.lstItem.remove(item);
    //   ) {
    // listOrder.remove(order);
    notifyListeners();
    // }
  }

  void removeOrder(int idTable) {
    listOrder.removeAt(listOrder.indexWhere((i) => i.idTable == idTable));
  }

  void removeAll() {
    listOrder.clear();
    notifyListeners();
  }
}

@immutable
class Order {
  Order(this.idTable, {this.lstItem});

  final int idTable;
  final List<CoffeeItem> lstItem;

  @override
  int get hashCode => idTable;

  @override
  bool operator ==(Object other) => other is Order && other.idTable == idTable;
}
