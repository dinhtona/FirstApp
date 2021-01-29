import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'item_order.dart';

@immutable
class Catalog extends Equatable {
  const Catalog({this.items = const <ItemOrder>[]});

  final List<ItemOrder> items;

  int get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  int get totalItem =>
      items.fold(0, (total, current) => total + current.quantity);

  @override
  List<Object> get props => [items];
}
