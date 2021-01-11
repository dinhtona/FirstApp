import 'package:FirstApp/NavigationBottomBar/BottomBar2.dart';
import 'package:FirstApp/Models/CurrentPageModel.dart';
import 'package:FirstApp/Screens/page1.dart';
import 'package:FirstApp/Screens/page2.dart';
import 'package:FirstApp/Screens/page3.dart';
import 'package:FirstApp/Screens/page4.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CurrentPageModel(),
      child: MyApp(),
    ),
  );
}

final key = new GlobalKey<MyStatefulWidget1State>();

class MyStatefulWidget1 extends StatefulWidget {
  MyStatefulWidget1({Key key}) : super(key: key);
  State createState() => new MyStatefulWidget1State();
}

class MyStatefulWidget1State extends State<MyStatefulWidget1> {
  String _createdObject = "Hello world!";
  String get createdObject => _createdObject;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(_createdObject),
    );
  }
}

class MyApp extends StatelessWidget {
  // Widget _currenPage;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Remove Debug banner
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Consumer looks for an ancestor Provider widget
              // and retrieves its model (Counter, in this case).
              // Then it uses that model to build widgets, and will trigger
              // rebuilds if the model is updated.
              Consumer<CurrentPageModel>(
                builder: (context, counter, child) {
                  if (counter.currentIndex == 0) {
                    print(counter.currentIndex);
                    return Page1();
                  } else if (counter.currentIndex == 1) {
                    print(counter.currentIndex);
                    return Page2();
                  } else if (counter.currentIndex == 3) {
                    print(counter.currentIndex);
                    return Page3();
                  } else {
                    print(counter.currentIndex);
                    return Page4();
                  }
                },
              ),
            ],
          ),
        ),
        extendBody: true,
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
        bottomNavigationBar: BottomBar2(),
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
