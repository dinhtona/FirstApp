import 'package:FirstApp/NavigationBottomBar/CurrentPageModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBar2 extends StatefulWidget {
  @override
  _BottomBar2State createState() => _BottomBar2State();
}

class _BottomBar2State extends State<BottomBar2> {
  int _currentindex = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _currentindex = 0;
    });
  }

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
          currentIndex: _currentindex,
          // elevation: 5.0,
          type: BottomNavigationBarType.fixed, //Căn đều bottom bar item
          // backgroundColor: Colors.blueAccent,
          // selectedItemColor: Colors.blueAccent,
          // unselectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_work), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home_work), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home_work), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home_work), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home_work), label: 'Home'),
          ],
          onTap: (index) {
            print(index);
            var counter = context.read<CurrentPageModel>();
            counter.changeIndex(index);
            setState(() {
              _currentindex = index;
            });
          },
        ),
      ),
    );
  }
}
