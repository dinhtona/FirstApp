import 'package:flutter/material.dart';

class ChiTietScreen extends StatelessWidget {
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
                  "https://i-shop.vnecdn.net/resize/560/560/images/2019/02/20/5c6cc233447da-tu-quan-ao-emley-2-canh-go-soi-tai-ho-chi-minh.jpg"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Chi tiết",
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
