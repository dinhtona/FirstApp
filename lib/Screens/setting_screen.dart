import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
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
                  "https://wallup.net/wp-content/uploads/2016/07/23/48859-Vegeta-748x421.jpg"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Vegeta",
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
