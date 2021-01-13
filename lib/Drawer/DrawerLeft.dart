import 'package:flutter/material.dart';
import 'package:FirstApp/Common/Strings.dart';

class DrawerLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(Colors.white);

    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createHeader2(context),
            ListTile(
              title: Text('ITEM 1'),
              onTap: () {
                print('Tap to Item 1');
              },
            ),
            Divider(),
            ListTile(
              title: Text('ITEM 2'),
              onTap: () {
                print('Item 2 taped !');
              },
            )
          ],
        ),
      ),
    );
    // Add a Drawer here in the next step.
  }

  Widget _createHeader2(BuildContext context) {
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
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage(stringCommon['drawer_bg']),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter),
            ),
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
