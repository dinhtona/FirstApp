import 'package:flutter/material.dart';
import 'package:FirstApp/Common/Strings.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class DrawerLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(Colors.white);

    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createHeader(context),
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
            ),
            Divider(),
            _createDrawerItem(icon: Icons.collections_bookmark, text: 'Steps'),
            _createDrawerItem(icon: Icons.face, text: 'Authors'),
            _createDrawerItem(
                icon: Icons.account_box, text: 'Flutter Documentation'),
            _createDrawerItem(icon: Icons.stars, text: 'Useful Links'),
            Divider(),
            _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
            ListTile(
              title: Text('0.0.1'),
              onTap: () {},
            ),
            Divider(),
          ],
        ),
      ),
    );
    // Add a Drawer here in the next step.
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
            child: BlurHash(
              hash: 'LFK2E,-,0JRQ02^%$+RRVBxB^-sq',
              image: 'https://laptrinhvb.net/logo.png',
              // image: stringCommon['drawer_bg'],
              imageFit: BoxFit.cover, 
              
            ),
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //       image: ExactAssetImage(stringCommon['drawer_bg']),
            //       fit: BoxFit.cover,
            //       alignment: Alignment.topCenter),
            // ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 20.0,
          child: Text(
            stringCommon['appName'],
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
        )
      ]),
    );
  }
}
