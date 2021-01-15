import 'package:flutter/material.dart';

class KyThuatScreen extends StatelessWidget {
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
                  "https://dienmaycholon.vn/public/picture/product/product12283/product_12283_1.png"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Kỷ thuật",
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
