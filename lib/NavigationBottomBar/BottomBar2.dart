import 'package:FirstApp/NavigationBottomBar/ChangePage.dart';
import 'package:FirstApp/NavigationBottomBar/MetaData.dart';
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
    List lstPage = listPage;

    //Set color for Bottom Bar
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Colors.green[200],
          primaryColor: Colors.red,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: new TextStyle(color: Colors.white))),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAliasWithSaveLayer, //Bo góc nav
        // notchMargin: 7,
        child: BottomNavigationBar(
          currentIndex: _currentindex,
          // elevation: 5.0,
          type: BottomNavigationBarType.fixed, //Căn đều bottom bar item
          // backgroundColor: Colors.blueAccent,
          selectedItemColor: Colors.pinkAccent,
          // unselectedItemColor: Colors.red,
          items: lstPage
              .map((page) =>
                  BottomNavigationBarItem(icon: page.icon, label: page.label))
              .toList(),
          onTap: (index) {
            if (index == 2) return;
            print(index);
            var selectedPage = context.read<ChangePage>();
            selectedPage.changePage(index);
            setState(() {
              _currentindex = index;
            });
          },
        ),
      ),
    );
  }
}
