import 'package:FirstApp/models/coffee_item.dart';

import 'package:FirstApp/ui_view/coffee_item_card.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class CoffeeGridHeader extends StatefulWidget {
  final int tableID;

  CoffeeGridHeader({key, @required this.tableID});
  @override
  _CoffeeGridHeaderState createState() => _CoffeeGridHeaderState();
}

class _CoffeeGridHeaderState extends State<CoffeeGridHeader> {
  List<CoffeeItemGROUP> lstGroup = [
    new CoffeeItemGROUP(1, "Cà phê"),
    new CoffeeItemGROUP(2, "Chà xữa"),
    new CoffeeItemGROUP(3, "Đồ ăn nhanh"),
    new CoffeeItemGROUP(4, "Sinh tố"),
    new CoffeeItemGROUP(5, "Rượu Tây"),
    new CoffeeItemGROUP(6, "Bia bọt"),
  ];
  List<CoffeeItem> lstItem = [
    CoffeeItem(
        1,
        'Trà Sữa Size L',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000,
        'M',
        idGroup: 2),
    CoffeeItem(
        2,
        'Cà phê đen nóng size ML',
        'https://www.eatright.org/-/media/eatrightimages/cup-of-coffee_528814833.jpg',
        12000,
        'L',
        count: 0,
        idGroup: 1),
    CoffeeItem(
        3,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        idGroup: 1),
    CoffeeItem(
        4,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        idGroup: 1),
    CoffeeItem(
        5,
        'Cà phê đen nóng size L',
        'https://cdn-prod.medicalnewstoday.com/content/images/articles/323/323594/white-cup-with-black-coffee.jpg',
        10000,
        'SL',
        idGroup: 1),
    CoffeeItem(
        6,
        'Trà sữa trân châu đường đen size XL',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000,
        'L',
        idGroup: 2),
    CoffeeItem(
        7,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        count: 0,
        idGroup: 1),
    CoffeeItem(
        8,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        idGroup: 3),
    CoffeeItem(
        9,
        'Trà Sữa Size L',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000,
        'M',
        idGroup: 2),
    CoffeeItem(
        10,
        'Cà phê đen nóng size M',
        'https://www.eatright.org/-/media/eatrightimages/cup-of-coffee_528814833.jpg',
        12000,
        'L',
        count: 0,
        idGroup: 1),
    CoffeeItem(
        11,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        count: 0,
        idGroup: 1),
    CoffeeItem(
        12,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        count: 0,
        idGroup: 5),
    CoffeeItem(
        13,
        'Cà phê đen nóng size L',
        'https://cdn-prod.medicalnewstoday.com/content/images/articles/323/323594/white-cup-with-black-coffee.jpg',
        10000,
        'SL'),
    CoffeeItem(
        14,
        'Trà sữa trân châu đường đen size XL',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000,
        'L',
        idGroup: 2),
    CoffeeItem(
        15,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        idGroup: 3),
    CoffeeItem(
        16,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        idGroup: 4),
    CoffeeItem(
        17,
        'Trà Sữa Size L',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000,
        'M',
        idGroup: 2),
    CoffeeItem(
        18,
        'Cà phê đen nóng size M',
        'https://www.eatright.org/-/media/eatrightimages/cup-of-coffee_528814833.jpg',
        12000,
        'L',
        idGroup: 4),
    CoffeeItem(
        19,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        idGroup: 1),
    CoffeeItem(
        20,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        idGroup: 3),
    CoffeeItem(
        21,
        'Cà phê đen nóng size L',
        'https://cdn-prod.medicalnewstoday.com/content/images/articles/323/323594/white-cup-with-black-coffee.jpg',
        10000,
        'SL',
        idGroup: 5),
    CoffeeItem(
        22,
        'Trà sữa trân châu đường đen size XL',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000,
        'L',
        idGroup: 2),
    CoffeeItem(
        23,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        idGroup: 6),
    CoffeeItem(
        24,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        idGroup: 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tableID.toString()),
      ),
      body: coffeeGridHeader(),
    );
  }

  Widget coffeeGridHeader() {
    lstGroup
        .map((g) =>
            g.lstCoffeeItem = lstItem.where((i) => i.idGroup == g.id).toList())
        .toList();

    return new ListView.builder(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 70),
      itemCount: lstGroup.length,
      itemBuilder: (context, index) {
        return new StickyHeader(
          header: new Container(
            height: 37.0,
            color: Colors.white,
            padding: new EdgeInsets.symmetric(horizontal: 12.0),
            alignment: Alignment.centerLeft,
            child: new Text(
              lstGroup[index].name,
              style: const TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          content: Container(
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  lstItem.where((i) => i.idGroup == lstGroup[index].id).length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
              ),
              itemBuilder: (contxt, indx) {
                // print(' index: ${lstItem[indx].name}');
                CoffeeItem cf = lstGroup[index].lstCoffeeItem[indx];
                // print(' Item : $cf');
                // return CoffeeCard(cf);
                return CoffeeItemCard(
                  key: Key(cf.id.toString()),
                  idTable: widget.tableID,
                  coffeeItem: cf,
                );
              },
            ),
          ),
        );
      },
      shrinkWrap: true,
    );
  }
}
