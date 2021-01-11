import 'package:flutter/material.dart';

class InheritedPage extends InheritedWidget {
  const InheritedPage(
      {Key key, @required this.currentPage, this.UpdateCurrentPage, this.child})
      : assert(currentPage != null),
        super(key: key, child: child);

  final Widget child;
  final int currentPage;

  final Function UpdateCurrentPage;

  static InheritedPage of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedPage>();
  }

  @override
  bool updateShouldNotify(InheritedPage oldWidget) {
    return currentPage != oldWidget;
  }
}
