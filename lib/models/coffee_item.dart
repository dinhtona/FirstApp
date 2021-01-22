import 'package:flutter/material.dart';

class CoffeeItem {
  CoffeeItem(this.id, this.name, this.imageURL, this.unitPrice, this.size,
      this.animationController,
      {this.count = 0, this.idGroup = 1});

  int id;
  String name;
  double unitPrice;
  String imageURL;
  String size;
  AnimationController animationController;
  int count;
  int idGroup;
}

class CoffeeItemGROUP {
  CoffeeItemGROUP(this.id, this.name);

  int id;
  String name;
}
