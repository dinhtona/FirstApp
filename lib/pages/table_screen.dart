import 'package:flutter/material.dart';

class TableAll extends StatefulWidget {
  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<TableAll> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipPath(
                  // clipper: MyClip(),
                  child: Container(
                    // height: 200,
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Text(
                          //   'Tìm kiếm bàn',
                          //   style: TextStyle(
                          //     fontSize: 22,
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 40,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                hintText: 'Nhập tên... ss',
                                hintStyle: TextStyle(
                                  color: Colors.deepPurple,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 7),
                                suffixIcon: Icon(
                                  Icons.search,
                                  // size: 22,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(),
          ],
        ),
      ),
    );
  }
}
