import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => new _BodyState();
}

class _BodyState extends State<Body> {
  startTime() async {
    var _duration = new Duration(milliseconds: 1250);
    return new Timer(_duration, navigationPage);
  }

  Future<bool> getLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool boolValue = prefs.getBool('isLogin') ?? false;
    return boolValue;
  }

  checkLogin() async {
    bool isLogined = await getLogin();
    print("status: $isLogined");
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    if (isLogined) {
      Navigator.of(context).pushReplacementNamed('/home');
      //  Navigator
      //     .of(context)
      //     .pushReplacement(new MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
    } else {
      //Navigator.of(context).pushReplacementNamed('/login');
      Navigator.of(context).pushReplacementNamed('/home');
    }
  }

  void navigationPage() {
    checkLogin();
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/img/ZLBh.gif',
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "Đang tải dữ liệu...",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
