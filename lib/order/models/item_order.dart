import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class ItemOrder extends Equatable {
  ItemOrder(this.id, this.name,  this.imageURL, this.price,{this.quantity = 1});

  final int id;
  final String name;
  final String imageURL;
  final int price;
  final int quantity;

  @override
  List<Object> get props => [id, name, imageURL, price, quantity];
}
