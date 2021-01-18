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

    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Table(
          // columnWidths: {1, FractionColumnWidth(.2)},//Éo xài dc
          border: TableBorder.all(),
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          defaultColumnWidth: FlexColumnWidth(2.0),

          // IntrinsicColumnWidth(),
          //FixedColumnWidth(70.0),
          //FractionColumnWidth(0.5),
          // FlexColumnWidth(2.0),

          children: _generateTableRow(50),
        ),
      ),
    );
  }
}
