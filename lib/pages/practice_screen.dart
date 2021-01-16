import 'dart:ffi';

import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  Practice({Key key}) : super(key: key);
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  Future<String> _caculation =
      Future<String>.delayed(Duration(seconds: 5), () => 'Data Loaded');
  bool start;

  @override
  void initState() {
    super.initState();
    setState(() {
      start = false;
    });
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
        child: FutureBuilder<String>(
          builder: (context, snapshot) {
            List<Widget> children;
            if (snapshot.hasData) {
              children = <Widget>[
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Result: ${snapshot.data}',
                    textAlign: TextAlign.center,
                  ),
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
      // : Center(
      //     child: new Container(
      //       child: Text('Chạy !'),
      //     ),
      //   ),
    );
  }
}
