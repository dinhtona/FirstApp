import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
        bottomNavigationBar: BottomAppBar(
          // currentIndex: 0,
          // items: [
          //   BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'HH'),
          //   BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'HH'),
          //   BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'HH'),
          //   // BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'HH')
          // ],
          shape: CircularNotchedRectangle(),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.blue,
          elevation: 0,

          child: Container(
            // color: Colors.red,
            height: 60,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_activity,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Icon(Icons.escalator),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.games_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.escalator,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent[200],
          child: Icon(
            Icons.qr_code,
          ),
          // shape: CircularNotchedRectangle(),

          onPressed: () => print('Add clicked'),
          elevation: 0,
          hoverElevation: 20,
        ),
      ),
    );
  }
}
