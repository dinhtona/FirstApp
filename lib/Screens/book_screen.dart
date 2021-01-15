import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                  "https://hinhanhdep.net/wp-content/uploads/2017/06/hinh-nen-bay-vien-ngoc-rong-dep-nhat-28.jpg"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Songoku",
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
