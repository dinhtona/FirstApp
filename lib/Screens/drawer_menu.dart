import 'package:FirstApp/provider/bottom_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:FirstApp/models/page_model.dart';
import 'package:FirstApp/Screens/kythuat_screen.dart';
import 'package:FirstApp/Screens/chitiet_screen.dart';
import 'package:transparent_image/transparent_image.dart';

class DrawerMenuMain extends StatefulWidget {
  // final Function onTap;
  // final int index;

  // DrawerMenuMain({this.index, this.onTap});

  @override
  _DrawerMenuMainState createState() => _DrawerMenuMainState();
}

class _DrawerMenuMainState extends State<DrawerMenuMain> {
  @override
  Widget build(BuildContext context) {
    final BottomBarProvider _bottomBarProvider =
        Provider.of<BottomBarProvider>(context);
    return SafeArea(
      child: Drawer(
        elevation: 5.0,
        child: Container(
          child: SafeArea(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  margin: EdgeInsets.only(bottom: 0),
                  accountName: Text(
                    "SON GO KU",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  accountEmail: Text("songoku@gmail.com"),
                  arrowColor: Theme.of(context).primaryColorDark,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Theme.of(context).primaryColorDark,
                      Theme.of(context).primaryColor
                    ]),
                    // image: DecorationImage(
                    //     fit: BoxFit.fill,
                    //     image: NetworkImage(
                    //         "https://c4.wallpaperflare.com/wallpaper/379/942/360/dragon-ball-dragon-ball-super-wallpaper-preview.jpg")),
                  ),
                  otherAccountsPictures: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          radius: 38,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 34,
                              height: 34,
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                      child: Container(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      backgroundColor: Colors.yellow,
                                    ),
                                  )),
                                  Center(
                                    child: FadeInImage.memoryNetwork(
                                      placeholder: kTransparentImage,
                                      image:
                                          'https://avatarfiles.alphacoders.com/558/55871.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // backgroundImage: NetworkImage(
                          //     "https://avatarfiles.alphacoders.com/558/55871.png"),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          radius: 38,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 34,
                              height: 34,
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                      child: Container(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      backgroundColor: Colors.yellow,
                                    ),
                                  )),
                                  Center(
                                    child: FadeInImage.memoryNetwork(
                                      placeholder: kTransparentImage,
                                      image:
                                          'https://i1.sndcdn.com/avatars-000083247059-ocdcqj-t500x500.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // backgroundImage: NetworkImage(
                          // "https://i1.sndcdn.com/avatars-000083247059-ocdcqj-t500x500.jpg"),
                        ),
                      ),
                    ),
                  ],
                  currentAccountPicture: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Container(
                            width: 68,
                            height: 68,
                            child: Stack(
                              children: <Widget>[
                                Center(
                                    child: CircularProgressIndicator(
                                  backgroundColor: Colors.white,
                                )),
                                Center(
                                  child: FadeInImage.memoryNetwork(
                                    placeholder: kTransparentImage,
                                    image:
                                        'https://i1.sndcdn.com/avatars-000272285088-bbpvne-t500x500.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // backgroundImage: FadeInImage.memoryNetwork(
                        //   // placeholder:  BlurHashImage('LIHn:79H1U.800%ND%t800Sc]{j?'),
                        //   placeholder: ,
                        //   image:
                        //       'https://i1.sndcdn.com/avatars-000272285088-bbpvne-t500x500.jpg',
                        // ).image,

                        // backgroundImage: NetworkImage(
                        //   "https://i1.sndcdn.com/avatars-000272285088-bbpvne-t500x500.jpg",
                        // ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //       image: AssetImage("assets/img/background_menu.png"),
                    //       fit: BoxFit.fill),
                    // ),
                    child: ListView(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      children: [
                        ExpansionTile(
                          // tilePadding: EdgeInsets.only(left: 20),
                          //tilePadding: EdgeInsets.zero,
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: CircleAvatar(
                                radius: 18,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    width: 34,
                                    height: 34,
                                    child: Stack(
                                      children: <Widget>[
                                        Center(
                                            child: Container(
                                          width: 20,
                                          height: 20,
                                          child: CircularProgressIndicator(
                                            backgroundColor: Colors.yellow,
                                          ),
                                        )),
                                        Center(
                                          child: FadeInImage.memoryNetwork(
                                            placeholder: kTransparentImage,
                                            image:
                                                'https://i.pinimg.com/originals/df/74/48/df744800f8e1e4977428814a73a437f2.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // backgroundImage: NetworkImage(
                                //   "https://i.pinimg.com/originals/df/74/48/df744800f8e1e4977428814a73a437f2.png",
                                //   scale: 2.0,
                                // ),
                              ),
                            ),
                          ),
                          title: Text("BẢNG KÊ CHI TIẾT"),
                          initiallyExpanded: true,
                          expandedCrossAxisAlignment: CrossAxisAlignment.center,
                          childrenPadding: EdgeInsets.only(
                            left: 20,
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text("Kỷ thuật"),
                              //contentPadding: EdgeInsets.all(0),
                              //dense: true,
                              leading: Icon(Icons.bar_chart),
                              selected: _bottomBarProvider.drawerItemIndex == 0,
                              onTap: () {
                                PageModel pageSelected = new PageModel();
                                pageSelected.iconData = Icons.bar_chart;
                                pageSelected.title = "Kỷ Thuật";
                                pageSelected.page = KyThuatScreen();
                                _bottomBarProvider.page = pageSelected;
                                Navigator.pop(context, true);
                                _bottomBarProvider.drawerItemIndex = 0;
                              },
                            ),
                            ListTile(
                              title: Text("Chi tiết"),
                              leading: Icon(Icons.approval),
                              selected: _bottomBarProvider.drawerItemIndex == 1,
                              onTap: () {
                                PageModel pageSelected = new PageModel();
                                pageSelected.iconData = Icons.approval;
                                pageSelected.title = "Chi tiết";
                                pageSelected.page = ChiTietScreen();
                                _bottomBarProvider.page = pageSelected;
                                Navigator.pop(context, true);
                                _bottomBarProvider.drawerItemIndex = 1;
                              },
                            ),
                            ListTile(
                              title: Text("Hóa chất"),
                              leading: Icon(Icons.star),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Text("Vật tư"),
                              leading: Icon(Icons.flag),
                              onTap: () {},
                            ),
                          ],
                        ),
                        ExpansionTile(
                          childrenPadding: EdgeInsets.only(left: 20),
                          leading: Icon(Icons.house),
                          title: Text("NGHIỆP VỤ KHO"),
                          children: <Widget>[
                            ListTile(
                              title: Text("Xuất kho"),
                              leading: Icon(Icons.book),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Text("Nhập kho"),
                              leading: Icon(Icons.airplanemode_on),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Text("Trả nhà cung cấp"),
                              leading: Icon(Icons.keyboard),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Text("Hàng tồn kho"),
                              leading: Icon(Icons.mobile_friendly),
                              onTap: () {},
                            ),
                          ],
                        ),
                        ExpansionTile(
                          leading: Icon(Icons.settings),
                          childrenPadding: EdgeInsets.only(left: 20),
                          //tilePadding: EdgeInsets.only(left: 10),
                          title: Text("CẤU HÌNH"),
                          initiallyExpanded: true,
                          children: <Widget>[
                            ListTile(
                              title: Text("Giao diện"),
                              leading: Icon(Icons.style),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Text("Vân tay"),
                              leading: Icon(Icons.fingerprint),
                              onTap: () {},
                            ),
                            Divider(
                              color: Colors.blue,
                              height: 5.0,
                            ),
                            ListTile(
                              title: Text("Đăng xuất"),
                              leading: Icon(Icons.logout),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
