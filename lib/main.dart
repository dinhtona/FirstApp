import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'NavigationBottomBar/BottomBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Remove Debug banner
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
        bottomNavigationBar: BottomBar(),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent[200],
          child: Icon(
            Icons.qr_code,
          ),
          // shape: CircularNotchedRectangle(),

          onPressed: () => print('Add clicked'),
          elevation: 5,
          hoverElevation: 20,
        ),
      ),
    );
  }
}
