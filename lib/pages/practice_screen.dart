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
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.headline2,
        child: FutureBuilder<TabIconData>(
          builder: (context, snapshot) {
            List<Widget> children;
            if (snapshot.hasData) {
              // _controller.animateTo(0.5,
              //     duration: const Duration(milliseconds: 4),
              //     curve: Curves.fastOutSlowIn);
              _controller.forward();

              children = <Widget>[
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: FadeTransition(
                    opacity: _animation,
                    child: Image.network(
                        'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/05/26191808/can_dogs_eat_pork_hero-500x500.jpg'),
                  ),
                  // Text(
                  //   'Result: ${snapshot.data.imagePath}',
                  //   textAlign: TextAlign.center,
                  // ),
                )
              ];
            } else if (snapshot.hasError) {
              children = <Widget>[
                Icon(Icons.error_outline),
                Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Error: ${snapshot.error}')),
              ];
            } else {
              children = <Widget>[
                SizedBox(
                  child: CircularProgressIndicator(),
                  width: 60,
                  height: 60,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    'Đang load cha nội... \nChờ xíu đi !!!',
                    style: TextStyle(fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                ),
              ];
            }

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              ),
            );
          },
          future: _caculation,
        ),
      ),
    );
  }
}
