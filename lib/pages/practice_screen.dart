import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class Practice extends StatelessWidget {
  List<Widget> _getColumn() {
    List<Widget> wg = [];

    for (int i = 0; i <= 3; i++) {
      wg.add(Container(
        height: 100,
        width: 100,
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(0.7),
      ));
    }
    return wg;
  }

  List<TableRow> _generateTableRow(int numRow) {
    List<TableRow> wg = [];
    for (int i = 0; i <= numRow; i++) {
      wg.add(TableRow(children: _getColumn()));
    }
    return wg;
  }

  @override
  Widget build(BuildContext context) {
    // Random random = new Random();
    List<Widget> _buildCells(int count) {
      return List.generate(
        count,
        (index) => Container(
          alignment: Alignment.center,
          width: 120.0,
          height: 60.0,
          color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(0.7),
          margin: EdgeInsets.all(4.0),
          child: Text("${index + 1}", style: Theme.of(context).textTheme.title),
        ),
      );
    }

    List<Widget> _buildRows(int count) {
      return List.generate(
        count,
        (index) => Row(
          children: _buildCells(10),
        ),
      );
    }

    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildCells(20),
          ),
          Flexible(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildRows(20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
