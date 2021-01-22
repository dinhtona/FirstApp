import 'package:FirstApp/models/coffee_item.dart';
import 'package:FirstApp/ui_view/grid_header.dart';
import 'package:flutter/material.dart';
import 'coffee_card.dart';

class HomeTable extends StatefulWidget {
  final AnimationController animationController;
  final List<CoffeeItem> lstItem;

  const HomeTable({Key key, this.animationController, this.lstItem})
      : super(key: key);
  @override
  _HomeTableState createState() => _HomeTableState();
}

class _HomeTableState extends State<HomeTable> {
  @override
  Widget build(BuildContext context) {
    final mainWidth = MediaQuery.of(context).size.width;
    return GridHeader();
  }

  _getBigItem() {
    List<CoffeeItem> lstItem = [
      CoffeeItem(
          1,
          'Trà Sữa Size L',
          'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
          45000,
          'M',
          null),
      CoffeeItem(
          2,
          'Cà phê đen nóng size M',
          'https://www.eatright.org/-/media/eatrightimages/cup-of-coffee_528814833.jpg',
          12000,
          'L',
          null,
          count: 9),
      CoffeeItem(
          3,
          'Cà phê nguyên chất size M',
          'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
          32000,
          'XL',
          null),
      CoffeeItem(
          4,
          'Bạc xĩu nóng',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
          22000,
          'S',
          null),
      CoffeeItem(
          5,
          'Cà phê đen nóng size L',
          'https://cdn-prod.medicalnewstoday.com/content/images/articles/323/323594/white-cup-with-black-coffee.jpg',
          10000,
          'SL',
          null),
      CoffeeItem(
          6,
          'Trà sữa trân châu đường đen size XL',
          'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
          45000,
          'L',
          null),
      CoffeeItem(
          3,
          'Cà phê nguyên chất size M',
          'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
          32000,
          'XL',
          null,
          count: 9),
      CoffeeItem(
          4,
          'Bạc xĩu nóng',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
          22000,
          'S',
          null),
      CoffeeItem(
          1,
          'Trà Sữa Size L',
          'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
          45000,
          'M',
          null),
      CoffeeItem(
          2,
          'Cà phê đen nóng size M',
          'https://www.eatright.org/-/media/eatrightimages/cup-of-coffee_528814833.jpg',
          12000,
          'L',
          null,
          count: 9),
      CoffeeItem(
          3,
          'Cà phê nguyên chất size M',
          'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
          32000,
          'XL',
          null,
          count: 9),
      CoffeeItem(
          4,
          'Bạc xĩu nóng',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
          22000,
          'S',
          null,
          count: 9),
      CoffeeItem(
          5,
          'Cà phê đen nóng size L',
          'https://cdn-prod.medicalnewstoday.com/content/images/articles/323/323594/white-cup-with-black-coffee.jpg',
          10000,
          'SL',
          null),
      CoffeeItem(
          6,
          'Trà sữa trân châu đường đen size XL',
          'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
          45000,
          'L',
          null),
      CoffeeItem(
          3,
          'Cà phê nguyên chất size M',
          'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
          32000,
          'XL',
          null),
      CoffeeItem(
          4,
          'Bạc xĩu nóng',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
          22000,
          'S',
          null),
      CoffeeItem(
          1,
          'Trà Sữa Size L',
          'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
          45000,
          'M',
          null),
      CoffeeItem(
          2,
          'Cà phê đen nóng size M',
          'https://www.eatright.org/-/media/eatrightimages/cup-of-coffee_528814833.jpg',
          12000,
          'L',
          null),
      CoffeeItem(
          3,
          'Cà phê nguyên chất size M',
          'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
          32000,
          'XL',
          null),
      CoffeeItem(
          4,
          'Bạc xĩu nóng',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
          22000,
          'S',
          null),
      CoffeeItem(
          5,
          'Cà phê đen nóng size L',
          'https://cdn-prod.medicalnewstoday.com/content/images/articles/323/323594/white-cup-with-black-coffee.jpg',
          10000,
          'SL',
          null),
      CoffeeItem(
          6,
          'Trà sữa trân châu đường đen size XL',
          'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
          45000,
          'L',
          null),
      CoffeeItem(
          3,
          'Cà phê nguyên chất size M',
          'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
          32000,
          'XL',
          null),
      CoffeeItem(
          4,
          'Bạc xĩu nóng',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
          22000,
          'S',
          null),
    ];
    return lstItem.map((cf) => CoffeeCard(cf)).toList();
  }
}
