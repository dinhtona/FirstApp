import 'package:FirstApp/models/coffee_item.dart';
import 'package:flutter/material.dart';

class HomeTable extends StatefulWidget {
  final AnimationController animationController;

  const HomeTable({Key key, this.animationController}) : super(key: key);
  @override
  _HomeTableState createState() => _HomeTableState();
}

class _HomeTableState extends State<HomeTable> {
  @override
  Widget build(BuildContext context) {
    final mainWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipPath(
                // clipper: MyClip(),
                child: Container(
                  // height: 200,
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text(
                        //   'Tìm kiếm bàn',
                        //   style: TextStyle(
                        //     fontSize: 22,
                        //     color: Colors.white,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 40,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              hintText: 'Tìm kiếm ...',
                              hintStyle: TextStyle(
                                color: Colors.deepPurple,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 7),
                              suffixIcon: Icon(
                                Icons.search,
                                // size: 22,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Đặc biệt',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                        fontSize: 18,
                      ),
                    ),
                    // Text(
                    //   'Tất cả',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.blueGrey,
                    //     fontSize: 18,
                    //   ),
                    // )
                  ],
                ),
              ),
              Wrap(
                spacing: 5,
                direction: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[200]),
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: SizedBox(
                      width: 100,
                      height: 120,
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 60,
                            // decoration: new BoxDecoration(
                            //   // color: Colors.green,
                            //   borderRadius: new BorderRadius.only(
                            //     topLeft: const Radius.circular(40.0),
                            //     topRight: const Radius.circular(40.0),
                            //   ),
                            // ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Image.network(
                                  'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 0,
                            // width: 100,
                            height: 20,
                            child: Text(
                              'Cà phê đen',
                              style: TextStyle(
                                fontSize: 13,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 0,
                            // width: 100,
                            height: 20,
                            child: Text(
                              'Size L',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            right: 0,
                            width: 100,
                            height: 20,
                            child: Text(
                              '12k',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                // decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            height: 20,
                            child: FloatingActionButton(
                              tooltip: 'Thêm vào Order',
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                size: 12,
                                color: Colors.green,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            height: 20,
                            child: FloatingActionButton(
                              tooltip: 'Bớt 1',
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                size: 12,
                                color: Colors.red,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[200]),
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            SizedBox(
                              width: 100,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6.0),
                                child: Image.network(
                                  'https://cdn-prod.medicalnewstoday.com/content/images/articles/323/323594/white-cup-with-black-coffee.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              constraints:
                                  BoxConstraints(minWidth: 100, maxWidth: 100),
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
                                'Cà phê đen nóng với chút sữa ấm ',
                                style: TextStyle(
                                    color: Colors.white,
                                    // backgroundColor: Colors.black38,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'tahoma'),
                              ),
                            ),
                            // Positioned(
                            //   width: 20,
                            //   top: 0,
                            //   right: 0,
                            //   child: Text(
                            //     'M',
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         backgroundColor: Colors.black38,
                            //         fontSize: 12,
                            //         fontWeight: FontWeight.bold,
                            //         fontFamily: 'tahoma'),
                            //   ),
                            // ),
                          ],
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
                                    'XXL',
                                    style: TextStyle(
                                      fontSize: 12,
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
                                    '120.000 đ',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ConstrainedBox(
                          constraints:
                              BoxConstraints.expand(width: 100, height: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 15,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: FloatingActionButton.extended(
                                    label: Text(
                                      '-',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                    elevation: 2,
                                    tooltip: 'Bớt 1',
                                    backgroundColor: Colors.white,
                                    // icon: Icon(
                                    //   Icons.remove,
                                    //   size: 12,
                                    //   color: Colors.red,
                                    // ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 18,
                                child: Center(
                                  child: Text(
                                    '0',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 15,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: FloatingActionButton.extended(
                                    label: Text(
                                      '+',
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                    ),
                                    elevation: 2,
                                    tooltip: 'Thêm vào Order',
                                    backgroundColor: Colors.white,
                                    // icon: Icon(
                                    //   Icons.add,
                                    //   size: 14,
                                    //   color: Colors.green,
                                    // ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[200]),
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            SizedBox(
                              width: 100,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6.0),
                                child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              constraints:
                                  BoxConstraints(minWidth: 100, maxWidth: 100),
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
                                'Just Coffee ',
                                style: TextStyle(
                                    color: Colors.white,
                                    // backgroundColor: Colors.black38,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'tahoma'),
                              ),
                            ),
                            // Positioned(
                            //   width: 20,
                            //   top: 0,
                            //   right: 0,
                            //   child: Text(
                            //     'M',
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         backgroundColor: Colors.black38,
                            //         fontSize: 12,
                            //         fontWeight: FontWeight.bold,
                            //         fontFamily: 'tahoma'),
                            //   ),
                            // ),
                          ],
                        ),
                        Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Text('12.000 đ'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getBigItem() {
    List<CoffeeItem> lstItem = [
      CoffeeItem({
        1,
        'Trà Sữa Size L',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000
      }),
      CoffeeItem({
        2,
        'Cà phê đen nóng size M',
        'https://www.eatright.org/-/media/eatrightimages/cup-of-coffee_528814833.jpg',
        12000
      }),
      CoffeeItem({
        3,
        'Cà phê nguyên chất size M',
        'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
        32000
      }),
      CoffeeItem({
        4,
        'Bạc xĩu nóng',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEL7oJvelVAkRPi1gLDGMl-zCzUNhfykJyg&usqp=CAU',
        22000
      }),
      CoffeeItem({
        5,
        'Cà phê đen nóng size L',
        'https://cdn-prod.medicalnewstoday.com/content/images/articles/323/323594/white-cup-with-black-coffee.jpg',
        10000
      }),
      CoffeeItem({
        6,
        'Trà sữa trân châu đường đen size XL',
        'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
        45000
      }),
    ];
    return Container(
      // margin: EdgeInsets.all(2),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );
}
