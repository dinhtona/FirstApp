import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
    );
  }
}
