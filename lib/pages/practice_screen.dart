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
          child: AnimatedContainer(
        //Hoạt ảnh các đối tượng
        //
        width: selected ? 200 : 100,
        height: !selected ? 200 : 100,
        color: selected ? Colors.greenAccent : Colors.yellow,
        alignment: selected
            ? Alignment.center
            : AlignmentDirectional
                .topCenter, //Chỉ có tác dụng đối với các thực thể bên trong (child)
        duration: Duration(milliseconds: 1000), //Tốc độ chuyển động
        // curve: Curves.easeInBack, //Mô tả chuyển động
        child: Icon(Icons.access_alarms),
        // child: FlutterLogo(
        //   size: 75,
        //   duration: Duration(milliseconds: 600), //Không tác dụng
        //   textColor: Colors.red, //Không tác dụng
        // ),
      )),
    );
  }
}
