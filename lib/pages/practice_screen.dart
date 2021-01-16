import 'dart:ffi';

import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  Practice({Key key}) : super(key: key);
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //Lắng nghe cử chỉ(onTap, onDoubleTap,...)
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
          child: Stack(
        children: [
          AnimatedOpacity(
            //Hoạt ảnh của Opacity: Thay đổi từ từ độ sáng tối của hình ảnh
            duration: Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            opacity: selected ? 1 : 0.2,
            child: Image.network(
              'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
            ),
          ),
        ],
      )),
    );
  }
}
