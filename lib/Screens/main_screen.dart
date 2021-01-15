import 'package:FirstApp/Models/image_carousel.dart';
import 'package:flutter/material.dart';
import 'package:FirstApp/Models/truyen_model.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:achievement_view/achievement_view.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ScrollController _controller;
  double _opcityBackToTop;

  @override
  void initState() {
    super.initState();
    _opcityBackToTop = 0.0;
    _controller = new ScrollController()
      ..addListener(() {
        //print("offset = ${_controller.offset}");
        if (_controller.offset > 230) {
          setState(() {
            _opcityBackToTop = 1.0;
          });
        } else {
          setState(() {
            _opcityBackToTop = 0.0;
          });
        }
      });
  }

  List<TruyenModel> _list = List()
    ..add(new TruyenModel(
        tentruyen: "Rồng thần xuất hiện",
        url: "assets/img/hinh1.png",
        author: "Maria Ozawa",
        tap: 1))
    ..add(new TruyenModel(
        tentruyen: "Songoku mất tích",
        url: "assets/img/hinh2.png",
        author: "Takuda",
        tap: 2))
    ..add(new TruyenModel(
        tentruyen: "Sai lầm của Krilin",
        url: "assets/img/hinh3.png",
        author: "Ohio",
        tap: 3))
    ..add(new TruyenModel(
        tentruyen: "Ma bư xuất hiện",
        url: "assets/img/hinh4.png",
        author: "Takazawa",
        tap: 4))
    ..add(new TruyenModel(
        tentruyen: "Pocollo trở về Namiec",
        url: "assets/img/hinh5.png",
        author: "Yamaha",
        tap: 5))
    ..add(new TruyenModel(
        tentruyen: "Cuộc chiến người xayda",
        url: "assets/img/hinh6.png",
        author: "Suzuki",
        tap: 6))
    ..add(new TruyenModel(
        tentruyen: "Vị khách không mời",
        url: "assets/img/hinh7.png",
        author: "Honda",
        tap: 7))
    ..add(new TruyenModel(
        tentruyen: "Rồng thần Na miếc",
        url: "assets/img/hinh8.png",
        author: "Toyota",
        tap: 8))
    ..add(new TruyenModel(
        tentruyen: "Phide đại đế",
        url: "assets/img/hinh1.png",
        author: "SYM",
        tap: 9))
    ..add(new TruyenModel(
        tentruyen: "Tàu vũ trụ xuất hiện",
        url: "assets/img/hinh2.png",
        author: "Tokuda",
        tap: 10))
    ..add(new TruyenModel(
        tentruyen: "Rồng thần xuất hiện",
        url: "assets/img/hinh1.png",
        author: "Maria Ozawa",
        tap: 1))
    ..add(new TruyenModel(
        tentruyen: "Songoku mất tích",
        url: "assets/img/hinh2.png",
        author: "Takuda",
        tap: 2))
    ..add(new TruyenModel(
        tentruyen: "Sai lầm của Krilin",
        url: "assets/img/hinh3.png",
        author: "Ohio",
        tap: 3))
    ..add(new TruyenModel(
        tentruyen: "Ma bư xuất hiện",
        url: "assets/img/hinh4.png",
        author: "Takazawa",
        tap: 4))
    ..add(new TruyenModel(
        tentruyen: "Pocollo trở về Namiec",
        url: "assets/img/hinh5.png",
        author: "Yamaha",
        tap: 5))
    ..add(new TruyenModel(
        tentruyen: "Cuộc chiến người xayda",
        url: "assets/img/hinh6.png",
        author: "Suzuki",
        tap: 6))
    ..add(new TruyenModel(
        tentruyen: "Vị khách không mời",
        url: "assets/img/hinh7.png",
        author: "Honda",
        tap: 7))
    ..add(new TruyenModel(
        tentruyen: "Rồng thần Na miếc",
        url: "assets/img/hinh8.png",
        author: "Toyota",
        tap: 8))
    ..add(new TruyenModel(
        tentruyen: "Phide đại đế",
        url: "assets/img/hinh1.png",
        author: "SYM",
        tap: 9))
    ..add(new TruyenModel(
        tentruyen: "Tàu vũ trụ xuất hiện",
        url: "assets/img/hinh2.png",
        author: "Tokuda",
        tap: 10));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          CustomScrollView(
            controller: _controller,
            scrollDirection: Axis.vertical,
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Column(
                      // mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              color: Colors.transparent,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: AspectRatio(
                                  aspectRatio: 1.6,
                                  child: BlurHash(
                                    hash: 'LEIX.}KX5O:*1TI[8{xtyG=fVGoy',
                                    image:
                                        'https://i.pinimg.com/originals/aa/f0/df/aaf0df13e8d2f5d00f5e101aa29c203d.jpg',
                                    imageFit: BoxFit.cover,
                                  ),
                                ),
                                // child: Image.network(
                                //   "https://i.pinimg.com/originals/aa/f0/df/aaf0df13e8d2f5d00f5e101aa29c203d.jpg",
                                //   fit: BoxFit.cover,
                                // ),
                              ),
                            ),
                            Positioned(
                              bottom: 10.0,
                              left: 14.0,
                              child: Container(
                                width: MediaQuery.of(context).size.width - 30,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 15),
                                    color: Colors.black.withOpacity(0.5),
                                    child: Text(
                                      "SUPER DARGON BALL",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: double.infinity,
                          height: 250,
                          child: ImageCarousel(),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              color: Colors.white,
                            ),
                            child: StaggeredGridView.count(
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 4,
                              mainAxisSpacing: 4.0,
                              crossAxisSpacing: 4.0,
                              shrinkWrap: true,
                              staggeredTiles: [
                                StaggeredTile.count(4, 2),
                                StaggeredTile.count(1, 1),
                                StaggeredTile.count(1, 1),
                                StaggeredTile.count(1, 1),
                                StaggeredTile.count(1, 1),
                                StaggeredTile.count(4, 1),
                              ],
                              children: <Widget>[
                                myPhotoList(
                                    "https://shoppinglazada.files.wordpress.com/2020/08/dragon-ball-fighterz-frieza-min.jpg",
                                    "LYHc:pv:EbtL;F#[bp\$TMexbofnU"),
                                myPhotoList(
                                    "https://wallpaperaccess.com/full/1981621.jpg",
                                    "LPHy%Rs\$qFod4,NF?tWAQ,M}n3R*"),
                                myPhotoList(
                                    "https://gamek.mediacdn.vn/thumb_w/600/133514250583805952/2020/12/8/photo-1-16074036102301093083908.jpg",
                                    "L5D+Ae9p00.R,4XQ9ENGL}xc.ARO"),
                                myPhotoList(
                                    "https://aothungame.vn/wp-content/uploads/2020/08/Gohan-is-Mad-min-500x281.jpg",
                                    "LJL:}.Ro4s~6MaM|9GtP#PNJIqV["),
                                myPhotoList(
                                    "https://shoppinglazada.files.wordpress.com/2020/08/dragon-ball-super-golden-freeza-min.jpg",
                                    "LBM?hn%4008^00nM0KpK%7%2?bM{"),
                                captionText(
                                    "LIST STORY DAGRON BALL", "Laptrinhvb"),
                              ],
                              padding: const EdgeInsets.all(4.0),
                            ),
                          ),
                        ),
                        StaggeredGridView.count(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 4,
                          padding: EdgeInsets.all(10),
                          mainAxisSpacing: 3.0,
                          crossAxisSpacing: 4.0,
                          scrollDirection: Axis.vertical,
                          children: _list
                              .map((item) => InkWell(
                                    onTap: () {
                                      AchievementView(
                                        context,
                                        alignment: Alignment.bottomCenter,
                                        title: item.tentruyen,
                                        subTitle: item.author,
                                        icon: Icon(Icons.book,
                                            color: Colors.white),
                                        isCircle: false,
                                        color: Colors.black.withOpacity(0.5),
                                      ).show();
                                    },
                                    child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Colors.white,
                                      elevation: 2.0,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 200,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                fit: BoxFit.fitHeight,
                                                image: AssetImage(item.url),
                                              ),
                                            ),
                                            // child: Transform.translate(
                                            //   offset: Offset(25, -125),
                                            //   child: Container(
                                            //     width: 30,
                                            //     height: 50,
                                            //     margin: EdgeInsets.symmetric(
                                            //         horizontal: 100, vertical: 100),
                                            //     decoration: BoxDecoration(
                                            //       borderRadius: BorderRadius.circular(8),
                                            //       color: Colors.red,
                                            //     ),
                                            //     child: IconButton(
                                            //       onPressed: () {
                                            //         print("meomeo");
                                            //       },
                                            //       icon: Icon(
                                            //         Icons.shopping_basket,
                                            //         color: Colors.white,
                                            //         size: 40,
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            color: Colors.blueGrey
                                                .withOpacity(0.2),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  item.tentruyen,
                                                  // softWrap: true,
                                                  // maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "${item.author}",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "Tập: ${item.tap}",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ))
                              .toList(),
                          staggeredTiles: _list
                              .map<StaggeredTile>((_) => StaggeredTile.fit(2))
                              .toList(),
                        ),
                        Text(
                          "Hết dữ liệu rồi, bạn ơi...",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 60),
                      ],
                    ),

                    // FloatingActionButton(
                    //   backgroundColor: Colors.blue.shade500,
                    //   onPressed: () {
                    //     _controller.animateTo(0,
                    //         duration: Duration(milliseconds: 500),
                    //         curve: Curves.easeInOut);
                    //   },
                    //   child: Icon(Icons.arrow_drop_up, size: 48),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Center(child: Text("Back to top")),
                    // SizedBox(
                    //   height: 50,
                    // ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 40.0,
            right: 10.0,
            child: Opacity(
              opacity: _opcityBackToTop,
              child: FloatingActionButton(
                heroTag: "btn1",
                backgroundColor: Colors.black.withOpacity(0.3),
                onPressed: () {
                  _controller.animateTo(0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                },
                child: Icon(Icons.arrow_drop_up, size: 48),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget captionText(String titleText, String subText) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                titleText,
                style: TextStyle(color: Colors.black, fontSize: 24.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                subText,
                style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget myPhotoList(String myImages, String hash) {
  return Container(
    child: BlurHash(
      hash: hash,
      image: myImages,
      imageFit: BoxFit.cover,
    ),
    // decoration: BoxDecoration(
    //   image: DecorationImage(
    //     fit: BoxFit.cover,
    //     image: NetworkImage(MyImages),
    //   ),
    // ),
  );
}
