import 'package:flutter/material.dart';

class CoffeeItem {
  CoffeeItem(Set<Object> set, {
    this.id = 0,
    this.name = '',
    this.imageURL = '',
    this.unitPrice = 0,
    this.animationController,
  });

  int id;
  String name;
  double unitPrice;
  String imageURL;
  AnimationController animationController;
}
