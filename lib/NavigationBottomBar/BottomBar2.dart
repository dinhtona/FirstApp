import 'package:flutter/material.dart';

class BottomBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set color for Bottom Bar
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Colors.green[200],
          primaryColor: Colors.red,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: new TextStyle(color: Colors.yellow))),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAliasWithSaveLayer, //Bo góc nav
        // notchMargin: 7,
        child: BottomNavigationBar(
          // elevation: 5.0,
          type: BottomNavigationBarType.fixed, //Căn đều bottom bar item
          // backgroundColor: Colors.blueAccent,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_work), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home_work), label: 'Home'),
            // BottomNavigationBarItem(icon: Icon(Icons.home_work), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home_work), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home_work), label: 'Home'),
          ],
        ),
      ),
    );
  }
}
