import 'package:FirstApp/order/models/item_order.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class Cart extends Equatable {
  const Cart({this.items = const <ItemOrder>[]});

  final List<ItemOrder> items;

  int get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  int get totalItem =>
      items.fold(0, (total, current) => total + current.quantity);

  @override
  List<Object> get props => [items];
}
