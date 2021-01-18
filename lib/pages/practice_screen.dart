// import 'dart:ffi';

import 'package:FirstApp/models/tabIcon_data.dart';
import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  Practice({Key key}) : super(key: key);
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> with TickerProviderStateMixin {
  //with TickerProviderStateMixin: vsync:this, Với từ khóa with thì mới có thể truyền this vào vsync

  Future<TabIconData> _caculation = Future<TabIconData>.delayed(
      Duration(seconds: 1), () => TabIconData.tabIconsList[0]);
  bool start;
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    setState(() {
      start = false;
    });
    _controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    // _controller
    //   ..animateTo(
    //     0.9,
    //     duration: Duration(seconds: 2),
    //     curve: Curves.easeOutSine,
    //   );

    _animation = Tween(
      begin: 0.1,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceInOut,
    )); //Thêm hiệu ứng vào
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        //Lắng nghe cử chỉ(onTap, onDoubleTap,...)
        onTap: () {
          setState(() {
            start = !start;
          });
        },
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Text('Hi !'),
                    backgroundColor: Colors.green,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Text('Bye !'),
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        )
        // Scaffold(
        //   floatingActionButton: FloatingActionButton.extended(
        //     onPressed: () {},
        //     label: Text('Do you like Music'),
        //     icon: Icon(Icons.audiotrack),
        //     backgroundColor: Colors.green,
        //   ),
        //   floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        // ),
        );
  }
}
