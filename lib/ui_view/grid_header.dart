import 'package:FirstApp/models/coffee_item.dart';
import 'package:FirstApp/pages/coffee_card.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class GridHeader extends StatefulWidget {
  @override
  _GridHeaderState createState() => _GridHeaderState();
}

class _GridHeaderState extends State<GridHeader> {
  List<CoffeeItemGROUP> lstGroup = [
    new CoffeeItemGROUP(1, "Cà phê"),
    new CoffeeItemGROUP(2, "Chà xữa"),
    new CoffeeItemGROUP(3, "Đồ ăn nhanh"),
    new CoffeeItemGROUP(4, "Sinh tố"),
    new CoffeeItemGROUP(5, "Rượu Tây"),
    new CoffeeItemGROUP(6, "Bia"),
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
        title: Text("Grid Header Demo"),
      ),
      body: gridHeader(),
    );
  }

  Widget gridHeader() {
    return new ListView.builder(
      itemCount: lstGroup.length,
      itemBuilder: (context, index) {
        return new StickyHeader(
          header: new Container(
            height: 38.0,
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
                return Card(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Stack(
                            // fit: StackFit.loose,
                            alignment: AlignmentDirectional.bottomStart,
                            children: [
                              SizedBox.expand(
                                // width: 100,
                                // height: w * 6 / 10,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.network(
                                    cf.imageURL,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                constraints: BoxConstraints(
                                    minWidth: 100, maxWidth: 100),
                                decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                                padding: EdgeInsets.fromLTRB(2, 1, 2, 1),
                                // height: 16,
                                // width: 100,
                                child: Text(
                                  cf.name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      // backgroundColor: Colors.black38,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'tahoma'),
                                ),
                              ),
                              cf.count > 0
                                  ? Positioned(
                                      top: -8,
                                      right: -5,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 2),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.redAccent,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0.0, 1.0), //(x,y)
                                              blurRadius: 1,
                                            )
                                          ],
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          '${cf.count}',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  : Text(''),
                            ],
                            overflow: Overflow.visible,
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints.expand(width: 100, height: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          // textDirection: TextDirection.ltr,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Center(
                                child: Text(
                                  cf.size,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                padding: EdgeInsets.only(right: 2),
                                alignment: Alignment.centerRight,
                                child: Text(
                                  cf.unitPrice.toString(),
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints.expand(width: 100, height: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Expanded(
                                flex: 21,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: FloatingActionButton.extended(
                                    label: Text(
                                      '-',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 16,
                                      ),
                                    ),
                                    elevation: 2,
                                    tooltip: 'Bớt 1',
                                    backgroundColor: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Center(
                                child: Text(''
                                    // coffeeItem.count > 0 ? coffeeItem.count.toString() : '',
                                    // style: TextStyle(
                                    //   fontWeight: FontWeight.bold,
                                    //   color: Colors.green,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Expanded(
                                flex: 21,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: FloatingActionButton.extended(
                                    label: Text(
                                      '+',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 16,
                                      ),
                                    ),
                                    elevation: 2,
                                    tooltip: 'Thêm vào Order',
                                    backgroundColor: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
