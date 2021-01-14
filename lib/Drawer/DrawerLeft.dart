import 'package:flutter/material.dart';
import 'package:FirstApp/Common/Strings.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:transparent_image/transparent_image.dart';

class DrawerLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    _createDrawerItem(icon: Icons.stars, text: 'Useful Links'),
                    ExpansionTile(
                        title: Text('Làm đẹp'),
                        childrenPadding: EdgeInsets.only(left: 20),
                        //tilePadding: EdgeInsets.only(left: 10),
                        initiallyExpanded: true,
                        leading: Icon(Icons.favorite),
                        children: <Widget>[
                          _createDrawerItem(
                            icon: Icons.contacts,
                            text: 'Contacts',
                          ),
                          _createDrawerItem(
                            icon: Icons.event,
                            text: 'Events',
                          ),
                          _createDrawerItem(
                              icon: Icons.note,
                              text: 'Notes',
                              onTap: () {
                                print('Notes');
                              }),
                        ]),
                    ExpansionTile(
                        title: Text('Vui chơi'),
                        childrenPadding: EdgeInsets.only(left: 20),
                        //tilePadding: EdgeInsets.only(left: 10),
                        initiallyExpanded: true,
                        leading: Icon(Icons.airline_seat_recline_extra),
                        children: <Widget>[
                          _createDrawerItem(
                              icon: Icons.collections_bookmark, text: 'Steps'),
                          _createDrawerItem(icon: Icons.face, text: 'Authors'),
                        ]),
                    _createDrawerItem(
                        icon: Icons.account_box, text: 'Flutter Documentation'),
                    _createDrawerItem(
                        icon: Icons.bug_report, text: 'Report an issue'),
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
    // Add a Drawer here in the next step.
  }

  Widget _groupedListTitle(List<Widget> lst) {
    ExpansionTile(
      title: Text('System'),
      childrenPadding: EdgeInsets.only(left: 20),
      //tilePadding: EdgeInsets.only(left: 10),
      initiallyExpanded: true,
      leading: Icon(Icons.settings),
      children: lst,
      // children: <Widget>[
      //   _createDrawerItem(
      //     icon: Icons.contacts,
      //     text: 'Contacts',
      //   ),
      //   _createDrawerItem(
      //     icon: Icons.event,
      //     text: 'Events',
      //   ),
      //   _createDrawerItem(
      //     icon: Icons.note,
      //     text: 'Notes',
      //   ),
      // ]
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
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
          // margin: EdgeInsets.only(bottom: 0),
          accountName: Text(
            "SON GO KU",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: Text("songoku@gmail.com"),
          // arrowColor: Theme.of(context).primaryColorDark,
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(colors: [
          //     Theme.of(context).primaryColorDark,
          //     Theme.of(context).primaryColor
          //   ]),
          //   // image: DecorationImage(
          //   //     fit: BoxFit.fill,
          //   //     image: NetworkImage(
          //   //         "https://c4.wallpaperflare.com/wallpaper/379/942/360/dragon-ball-dragon-ball-super-wallpaper-preview.jpg")),
          // ),
          otherAccountsPictures: [
            // CircleAvatar(
            //   // radius: 40,
            //   backgroundColor: Colors.white,
            //   child: Padding(
            //     padding: EdgeInsets.all(2.0),
            //     child: CircleAvatar(
            //       // radius: 38,
            //       child: ClipRRect(
            //         // borderRadius: BorderRadius.circular(1000),
            //         child: Container(
            //           // width: 34,
            //           // height: 34,
            //           child: Stack(
            //             children: <Widget>[
            //               Center(
            //                   child: Container(
            //                 width: 20,
            //                 height: 20,
            //                 child: CircularProgressIndicator(
            //                   backgroundColor: Colors.white,
            //                 ),
            //               )),
            //               Center(
            //                 child: FadeInImage.memoryNetwork(
            //                   placeholder: kTransparentImage,
            //                   image: 'https://laptrinhvb.net/logo.png',
            //                   fit: BoxFit.fill,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            circleLoadingAvatar(40, 25,
                'https://i.pinimg.com/originals/17/89/d9/1789d994f2b657e88edbee62d77e7f63.jpg'),
          ],
          currentAccountPicture: circleLoadingAvatar(100, 50,
              'https://i1.sndcdn.com/avatars-000560768412-fgpz9h-t500x500.jpg'),
          // CircleAvatar(
          //   // radius: 100,
          //   backgroundColor: Colors.white,
          //   child: Padding(
          //     padding: const EdgeInsets.all(2.0),
          //     child: CircleAvatar(
          //       radius: 50,
          //       backgroundColor: Colors.transparent,
          //       backgroundImage: NetworkImage(
          //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5ps8TZRyIWb6SoQdrElDc0BWnkwI9p0TiSQ&usqp=CAU",
          //       ),
          //     ),
          //   ),
          // ),
        ),
      ]),
    );
  }
}

CircleAvatar circleLoadingAvatar(
    double circleSize, double loadingCircleSize, String url) {
  return CircleAvatar(
    radius: circleSize,
    backgroundColor: Colors.white,
    child: Padding(
      padding: EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: circleSize,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(circleSize),
          child: Container(
            width: circleSize,
            height: circleSize,
            child: Stack(
              children: <Widget>[
                Center(
                    child: Container(
                  width: loadingCircleSize,
                  height: loadingCircleSize,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                )),
                Center(
                  child: FadeInImage.memoryNetwork(
                    alignment: Alignment.center,
                    placeholder: kTransparentImage,
                    image: url,
                    fit: BoxFit.cover,
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
  );
}
