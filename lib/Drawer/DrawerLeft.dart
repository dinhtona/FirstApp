import 'package:FirstApp/Models/MyPage.dart';
import 'package:FirstApp/NavigationBottomBar/ChangePageProvider.dart';
import 'package:FirstApp/NavigationBottomBar/MetaData.dart';
import 'package:FirstApp/UI/ImagesHelper.dart';
import 'package:flutter/material.dart';
import 'package:FirstApp/Common/Strings.dart';
import 'package:provider/provider.dart';

class DrawerLeft extends StatefulWidget {
  @override
  _DrawerLeftState createState() => _DrawerLeftState();
}

class _DrawerLeftState extends State<DrawerLeft> {
  int _currentindex = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _currentindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<MyPage> lstPage = listPageDrawer;
    // FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return SafeArea(
      child: Drawer(
          elevation: 20.0,
          // child: ListView(
          // padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 190,
                child: _createHeader(context),
              ),
              Expanded(
                child: ListView(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  children: [
                    _createDrawerItem(
                        icon: Icon(Icons.stars), text: 'Useful Links'),
                    ExpansionTile(
                        title: Text('Làm đẹp'),
                        childrenPadding: EdgeInsets.only(left: 20),
                        //tilePadding: EdgeInsets.only(left: 10),
                        initiallyExpanded: true,
                        leading: Icon(Icons.favorite),
                        children: 
                        //lstPage
                        // .map(
                        //   (page) => _createDrawerItem(
                        //       icon: page.icon,
                        //       text: page.title,
                        //       onTap: () {
                        //         var selectedPage =
                        //             context.read<ChangePageProvider>();
                        //         selectedPage.changePage(page.index);
                        //         setState(() {
                        //           _currentindex = page.index;
                        //         });
                        //       }),
                        // )
                        // .toList(),
                        <Widget>[
                          _createDrawerItem(
                              icon: Icon(Icons.contacts),
                              text: 'Contacts',
                              onTap: () {
                                
                              }),
                          _createDrawerItem(
                            icon: Icon(Icons.event),
                            text: 'Events',
                          ),
                          _createDrawerItem(
                              icon: Icon(Icons.note),
                              text: 'Notes',
                              onTap: () {
                                print('Notes');
                              }),

                        ]
                        ),
                    ExpansionTile(
                        title: Text('Vui chơi'),
                        childrenPadding: EdgeInsets.only(left: 20),
                        //tilePadding: EdgeInsets.only(left: 10),
                        initiallyExpanded: false,
                        leading: Icon(Icons.airline_seat_recline_extra),
                        children: <Widget>[
                          _createDrawerItem(
                              icon: Icon(Icons.collections_bookmark),
                              text: 'Steps'),
                          _createDrawerItem(
                              icon: Icon(Icons.face), text: 'Authors'),
                        ]),
                    _createDrawerItem(
                        icon: Icon(Icons.account_box),
                        text: 'Flutter Documentation'),
                    _createDrawerItem(
                        icon: Icon(Icons.bug_report), text: 'Report an issue'),
                    ListTile(
                      title: Text('0.0.1'),
                      onTap: () {},
                    ),
                    Divider(),
                  ],
                ),
              )
            ],
          )
          // ),
          ),
    );
  }

  Widget _createDrawerItem({Icon icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      selected: false,
      leading: icon,
      title: Text(text),
      onTap: onTap,
    );
  }

  Widget _createHeader(BuildContext context) {
    Color gradientStart = Colors.transparent;
    Color gradientEnd = Colors.black.withOpacity(0.9);

    return DrawerHeader(
      curve: Curves.fastOutSlowIn,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [gradientStart, gradientEnd],
            ).createShader(Rect.fromLTRB(0, 5, rect.width, rect.height - 10));
          },
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage(StringCommon.drawer_bg),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter),
            ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 20.0,
          child: Text(
            StringCommon.appName,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          accountName: Text(
            "SON GO KU",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: Text("songoku@gmail.com"),
          otherAccountsPictures: [
            ImagesHelper.circleLoadingAvatar(40, 25,
                'https://i.pinimg.com/originals/17/89/d9/1789d994f2b657e88edbee62d77e7f63.jpg'),
          ],
          currentAccountPicture: ImagesHelper.circleLoadingAvatar(100, 50,
              'https://i1.sndcdn.com/avatars-000560768412-fgpz9h-t500x500.jpg'),
        ),
      ]),
    );
  }
}
