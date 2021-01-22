import 'package:FirstApp/models/coffee_item.dart';
import 'package:FirstApp/pages/coffee_card.dart';
import 'package:FirstApp/ui_view/coffee_item_card.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class CoffeeGridHeader extends StatefulWidget {
  int tableID;

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
        null,
        idGroup: 2),
    CoffeeItem(
        2,
        'Cà phê đen nóng size M',
        'https://www.eatright.org/-/media/eatrightimages/cup-of-coffee_528814833.jpg',
        12000,
        'L',
        null,
        count: 9,
        idGroup: 1),
    CoffeeItem(
        3,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        null,
        idGroup: 1),
    CoffeeItem(
        4,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        null,
        idGroup: 1),
    CoffeeItem(
        5,
        'Cà phê đen nóng size L',
        'https://cdn-prod.medicalnewstoday.com/content/images/articles/323/323594/white-cup-with-black-coffee.jpg',
        10000,
        'SL',
        null,
        idGroup: 1),
    CoffeeItem(
        6,
        'Trà sữa trân châu đường đen size XL',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000,
        'L',
        null,
        idGroup: 2),
    CoffeeItem(
        3,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        null,
        count: 9,
        idGroup: 1),
    CoffeeItem(
        4,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        null,
        idGroup: 3),
    CoffeeItem(
        1,
        'Trà Sữa Size L',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000,
        'M',
        null,
        idGroup: 2),
    CoffeeItem(
        2,
        'Cà phê đen nóng size M',
        'https://www.eatright.org/-/media/eatrightimages/cup-of-coffee_528814833.jpg',
        12000,
        'L',
        null,
        count: 9,
        idGroup: 1),
    CoffeeItem(
        3,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        null,
        count: 9,
        idGroup: 1),
    CoffeeItem(
        4,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        null,
        count: 9,
        idGroup: 5),
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
        null,
        idGroup: 2),
    CoffeeItem(
        3,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        null,
        idGroup: 3),
    CoffeeItem(
        4,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        null,
        idGroup: 4),
    CoffeeItem(
        1,
        'Trà Sữa Size L',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000,
        'M',
        null,
        idGroup: 2),
    CoffeeItem(
        2,
        'Cà phê đen nóng size M',
        'https://www.eatright.org/-/media/eatrightimages/cup-of-coffee_528814833.jpg',
        12000,
        'L',
        null,
        idGroup: 4),
    CoffeeItem(
        3,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        null,
        idGroup: 1),
    CoffeeItem(
        4,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        null,
        idGroup: 3),
    CoffeeItem(
        5,
        'Cà phê đen nóng size L',
        'https://cdn-prod.medicalnewstoday.com/content/images/articles/323/323594/white-cup-with-black-coffee.jpg',
        10000,
        'SL',
        null,
        idGroup: 5),
    CoffeeItem(
        6,
        'Trà sữa trân châu đường đen size XL',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000,
        'L',
        null,
        idGroup: 2),
    CoffeeItem(
        3,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000,
        'XL',
        null,
        idGroup: 6),
    CoffeeItem(
        4,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000,
        'S',
        null,
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
    return new ListView.builder(
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
                // print(' index: $index');
                CoffeeItem cf =
                    lstItem.where((i) => i.id == lstItem[indx].id).first;
                // print(' Item : $cf');
                // return CoffeeCard(cf);
                return CoffeeItemCard(
                  key: UniqueKey(),
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
