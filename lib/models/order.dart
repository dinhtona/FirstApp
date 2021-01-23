import 'package:flutter/material.dart';
import 'coffee_item.dart';

class OrderModel with ChangeNotifier {
  List<Order> listOrder;

  double totalPrice(int idTable) {
    double total = 0;
    listOrder.where((o) => o.idTable == idTable).first.lstItem.map((cf) {
      total += cf.unitPrice;
    });
    return total;
  }

  int totalItem(int idTable) {
    int total = 0;
    listOrder.where((o) => o.idTable == idTable).first.lstItem.map((cf) {
      total += 1;
    });
    return total;
  }

  void updateItem(int idTable, CoffeeItem item) {
    Order od = listOrder.where((o) => o.idTable == idTable).first;
    if (od == null) {
      od = new Order(idTable, lstItem: [item]);
    } else {
      List<CoffeeItem> lstCoffee =
          listOrder.where((o) => o.idTable == idTable).first.lstItem;
      if (lstCoffee.contains(item)) {
        lstCoffee[lstCoffee.indexWhere((element) => element.id == item.id)] =
            item;
        listOrder.where((o) => o.idTable == idTable).first.lstItem = lstCoffee;
      } else {
        lstCoffee..add(item);
        listOrder.where((o) => o.idTable == idTable).first.lstItem = lstCoffee;
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

class Order {
  Order(this.idTable, {this.lstItem});

  int idTable;
  List<CoffeeItem> lstItem;
}
