import 'package:flutter/material.dart';

class CoffeeItem {
  CoffeeItem(this.id, this.name, this.imageURL, this.unitPrice, this.size,
      this.animationController,
      {this.count = 0});

  int id;
  String name;
  double unitPrice;
  String imageURL;
  String size;
  AnimationController animationController;
  int count;
}
