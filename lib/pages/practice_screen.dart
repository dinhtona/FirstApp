import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  Practice({Key key}) : super(key: key);

  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            Container(
              color: Colors.green[300],
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_pageController.hasClients) {
                      _pageController.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 900),
                        curve: Curves.bounceOut,
                      );
                    }
                  },
                  child: Text('Next'),
                ),
              ),
            ),
            Container(
              color: Colors.blue[300],
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_pageController.hasClients) {
                      _pageController.animateToPage(0,
                          curve: Curves.easeInOut,
                          duration: const Duration(milliseconds: 300));
                    }
                  },
                  child: Text('Back'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
