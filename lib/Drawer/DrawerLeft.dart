import 'package:flutter/material.dart';
import 'package:FirstApp/Common/Strings.dart';

class DrawerLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text(
          //     'TONA Header',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   decoration: BoxDecoration(
          //     color: Colors.pinkAccent,
          //   ),
          // )
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
    );
    // Add a Drawer here in the next step.
  }

  Widget _createHeader2(BuildContext context) {
    Color gradientStart = Colors.transparent;
    Color gradientEnd = Colors.black;

    return DrawerHeader(
      child: Stack(children: <Widget>[
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [gradientStart, gradientEnd],
            ).createShader(
                Rect.fromLTRB(0, -140, rect.width, rect.height - 20));
          },
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [gradientStart, gradientEnd],
              //   begin: FractionalOffset(0, 0),
              //   end: FractionalOffset(0, 1),
              //   stops: [0.0, 1.0],
              //   tileMode: TileMode.clamp
              // ),
              image: DecorationImage(
                image: ExactAssetImage('assets/images/dog_hero.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          children: [
            Expanded(
              child: Container(
                child: Align(
                  alignment: FractionalOffset(0.5, 0.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 110.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[600],
                          blurRadius:
                              20.0, // has the effect of softening the shadow
                          spreadRadius:
                              0, // has the effect of extending the shadow
                          // offset: Offset(
                          //   10.0, // horizontal, move right 10
                          //   10.0, // vertical, move down 10
                          // ),
                        )
                      ],
                    ),
                    child:
                        Image.asset('assets/images/drawer_bg.png', width: 70),
                  ),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    stringCommon['appName'],
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
              flex: 0,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 28.0),
                // child: Text(
                //   'We do all the best for your future endeavors by providing the connections you need during your job seeking process.',
                //   style: TextStyle(fontSize: 16.0, color: Colors.white),
                //   textAlign: TextAlign.center,
                // ),
                padding: EdgeInsets.symmetric(vertical: 18.0),
                constraints: BoxConstraints(
                  maxWidth: 330.0,
                ),
              ),
              flex: 0,
            ),
            Expanded(
              child: ButtonTheme(
                minWidth: 320.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  textColor: Colors.blueAccent,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Container(
                    child: Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              flex: 0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ButtonTheme(
                  minWidth: 320.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      child: Text(
                        'Continue with Google',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              flex: 0,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: ButtonTheme(
                  minWidth: 200.0,
                  height: 50.0,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    textColor: Colors.white,
                    child: Container(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              flex: 0,
            ),
          ],
        ),
      ]),
    );
  }

  Widget _createHeader() {
    //Before try to add LinearGradient filter to backgroud image
    Color gradientStart = Colors.transparent;
    Color gradientEnd = Colors.black;

    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            image: AssetImage('assets/images/drawer_bg.png'),
            // colorFilter: ColorFilter.srgbToLinearGamma(),
          ),
          // gradient: LinearGradient(
          //     begin: Alignment.bottomCenter,
          //     end: Alignment.topCenter,
          //     colors: [Colors.grey.withOpacity(0.0), Colors.transparent],
          // stops: [
          //           0.0,
          //           1.0
          //         ]),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text(stringCommon['appName'],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }
}
