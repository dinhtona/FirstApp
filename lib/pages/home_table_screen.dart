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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                                hintText: 'Nhập tên...',
                                hintStyle: TextStyle(
                                  color: Colors.deepPurple,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 7),
                                suffixIcon: Icon(
                                  Icons.search,
                                  // size: 22,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
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
              SizedBox(
                width: 100,
                height: 100,
                child: Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 60,
                      child: Image.network(
                          'https://lh3.googleusercontent.com/lAJPinE4zkFc2Im7tQfKYVddiYwj_BiaA2C0ZSu2txv4g5sTl3OMKSTK0snsyQMT_3tPRKxTBVpmxhQMAq6x5TQ-EA=w800',
                          fit: BoxFit.cover),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 0,
                      width: 100,
                      height: 20,
                      child: Text('Cà phê đen'),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 0,
                      width: 100,
                      height: 20,
                      child: Text(
                        '12k',
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   padding: EdgeInsets.all(10),
              //   height: 600,
              //   child: GridView.count(
              //     crossAxisSpacing: 10,
              //     mainAxisSpacing: 10,
              //     // maxCrossAxisExtent: 200,
              //     crossAxisCount: 4,
              //     scrollDirection: Axis.vertical,
              //     children: [
              //       _getBigItem(),
              //       _getBigItem(),
              //       _getBigItem(),
              //       _getBigItem(),
              //       _getBigItem(),
              //     ],
              //   ),
              // ),
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
}
