import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    // size: 50,
                    // color: Colors.purple[600],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Supper Bar',
                  style: TextStyle(
                      fontSize: 50,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          backgroundColor: Colors.pinkAccent,
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('Clicked Setting !');
              },
            )
          ],
        ),
      ),
    );
  }
}
