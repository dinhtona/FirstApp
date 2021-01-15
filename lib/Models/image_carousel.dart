import 'package:FirstApp/Theme/theme_notifier.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImageCarousel extends StatefulWidget {
  _ImageCarouselState createState() => new _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  String _titleBanner;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    _titleBanner = "DẤU ẤN RỒNG THIÊNG";
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    Widget carousel = new Carousel(
      boxFit: BoxFit.cover,
      images: [
        new AssetImage('assets/img/slider1.jpg'),
        new AssetImage('assets/img/slider2.jpg'),
        new AssetImage('assets/img/slider3.jpg'),
        new AssetImage('assets/img/slider4.jpg'),
      ],
      radius: Radius.circular(10),
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 6.0,
      dotIncreasedColor: themeNotifier.getAccentColor(),
      dotBgColor: Colors.transparent,
      dotPosition: DotPosition.topRight,
      dotVerticalPadding: 10.0,
      showIndicator: true,
      indicatorBgPadding: 7.0,
      onImageTap: (index) {
        print(index);
      },
      onImageChange: (preIndex, nextIndex) {
        print("pre $preIndex, next $nextIndex");
        if (nextIndex == 0) {
          setState(() {
            _titleBanner = "DẤU ẤN RỒNG THIÊNG";
          });
        } else if (nextIndex == 1) {
          setState(() {
            _titleBanner = "DORAEMON MÈO MÁY";
          });
        } else if (nextIndex == 2) {
          setState(() {
            _titleBanner = "NARUTO NINJA";
          });
        } else if (nextIndex == 3) {
          setState(() {
            _titleBanner = "SUBASA FOOTBALL";
          });
        }
      },
    );

    Widget banner(String title) => Padding(
          padding: const EdgeInsets.only(top: 190.0, left: 0.0),
          child: new Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0)),
              color: Colors.black.withOpacity(0.6),
            ),
            padding: const EdgeInsets.all(10.0),
            child: new Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: animation.value, //18.0,
                color: Colors.white,
              ),
            ),
          ),
          // ),
          //  ),
        );

    return new Scaffold(
      // backgroundColor: Colors.black,
      body: new Center(
        child: new Container(
          padding: const EdgeInsets.all(10.0),
          height: screenHeight / 2,
          child: new ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: new Stack(
              children: [
                carousel,
                banner(_titleBanner),
              ],
            ),
          ),
        ),
      ),
    );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}
